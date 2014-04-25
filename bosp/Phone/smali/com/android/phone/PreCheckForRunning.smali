.class Lcom/android/phone/PreCheckForRunning;
.super Ljava/lang/Object;
.source "MultipleSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreCheckForRunning$ServiceComplete;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Settings/PreCheckForRunning"


# instance fields
.field public byPass:Z

.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mServiceComplete:Lcom/android/phone/PreCheckForRunning$ServiceComplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    .line 59
    iput-object p1, p0, Lcom/android/phone/PreCheckForRunning;->context:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/android/phone/PreCheckForRunning$ServiceComplete;

    invoke-direct {v0, p0}, Lcom/android/phone/PreCheckForRunning$ServiceComplete;-><init>(Lcom/android/phone/PreCheckForRunning;)V

    iput-object v0, p0, Lcom/android/phone/PreCheckForRunning;->mServiceComplete:Lcom/android/phone/PreCheckForRunning$ServiceComplete;

    .line 61
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/android/phone/PreCheckForRunning;->mServiceComplete:Lcom/android/phone/PreCheckForRunning$ServiceComplete;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/phone/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 62
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/android/phone/PreCheckForRunning;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreCheckForRunning;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PreCheckForRunning;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunning;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PreCheckForRunning;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunning;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkToRun(Landroid/content/Intent;II)V
    .locals 4
    .parameter "intent"
    .parameter "slotId"
    .parameter "req"

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/phone/PreCheckForRunning;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/PreCheckForRunning;->setIntent(Landroid/content/Intent;)V

    .line 82
    iget-object v1, p0, Lcom/android/phone/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    move-result v0

    .line 83
    .local v0, r:I
    const-string v1, "Settings/PreCheckForRunning"

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

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deRegister()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 101
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "it"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/PreCheckForRunning;->intent:Landroid/content/Intent;

    .line 96
    return-void
.end method
