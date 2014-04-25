.class Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;
.super Ljava/lang/Object;
.source "MultipleSimCallSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreCheckForRunningSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceComplete"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreCheckForRunningSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/PreCheckForRunningSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;->this$0:Lcom/android/phone/PreCheckForRunningSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;->this$0:Lcom/android/phone/PreCheckForRunningSetting;

    #getter for: Lcom/android/phone/PreCheckForRunningSetting;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/phone/PreCheckForRunningSetting;->access$000(Lcom/android/phone/PreCheckForRunningSetting;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 85
    .local v0, result:I
    const-string v1, "PreCheckForRunning1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceComplete with the result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;->this$0:Lcom/android/phone/PreCheckForRunningSetting;

    #getter for: Lcom/android/phone/PreCheckForRunningSetting;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/PreCheckForRunningSetting;->access$200(Lcom/android/phone/PreCheckForRunningSetting;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PreCheckForRunningSetting$ServiceComplete;->this$0:Lcom/android/phone/PreCheckForRunningSetting;

    #getter for: Lcom/android/phone/PreCheckForRunningSetting;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/PreCheckForRunningSetting;->access$100(Lcom/android/phone/PreCheckForRunningSetting;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_1
    return-void
.end method
