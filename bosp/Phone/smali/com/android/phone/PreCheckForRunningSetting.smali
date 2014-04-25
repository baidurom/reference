.class Lcom/android/phone/PreCheckForRunningSetting;
.super Ljava/lang/Object;
.source "MultipleSimCallSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreCheckForRunning1"


# instance fields
.field public byPass:Z

.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mServiceComplete:Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PreCheckForRunningSetting;->byPass:Z

    .line 76
    iput-object p1, p0, Lcom/android/phone/PreCheckForRunningSetting;->context:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;

    invoke-direct {v0, p0}, Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;-><init>(Lcom/android/phone/PreCheckForRunningSetting;)V

    iput-object v0, p0, Lcom/android/phone/PreCheckForRunningSetting;->mServiceComplete:Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;

    .line 78
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/android/phone/PreCheckForRunningSetting;->mServiceComplete:Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/phone/PreCheckForRunningSetting;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 79
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunningSetting;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/android/phone/PreCheckForRunningSetting;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreCheckForRunningSetting;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunningSetting;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PreCheckForRunningSetting;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunningSetting;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PreCheckForRunningSetting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunningSetting;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkToRun(Landroid/content/Intent;II)V
    .locals 4
    .parameter "intent"
    .parameter "slotId"
    .parameter "req"

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/android/phone/PreCheckForRunningSetting;->byPass:Z

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/phone/PreCheckForRunningSetting;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/PreCheckForRunningSetting;->setIntent(Landroid/content/Intent;)V

    .line 101
    iget-object v1, p0, Lcom/android/phone/PreCheckForRunningSetting;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    move-result v0

    .line 102
    .local v0, r:I
    const-string v1, "PreCheckForRunning1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The result of handleCellConn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deRegister()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunningSetting;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 119
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "it"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/phone/PreCheckForRunningSetting;->intent:Landroid/content/Intent;

    .line 115
    return-void
.end method
