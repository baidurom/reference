.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 3855
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3857
    const/4 v0, 0x0

    .line 3859
    .local v0, resetFlag:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->isDataTransmitting()Z

    move-result v0

    .line 3862
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mPeriodicRAUFollowOnProceedEnable:Z

    if-eqz v1, :cond_0

    .line 3863
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v2, "[SCRI] Detect RAU FollowOnProceed:Force to let resetFlag as true (regard PS session exist)"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3864
    const/4 v0, 0x1

    .line 3865
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    iput-boolean v4, v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mPeriodicRAUFollowOnProceedEnable:Z

    .line 3868
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getScriState()I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getScriState()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 3869
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI]act:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3871
    if-eqz v0, :cond_2

    .line 3872
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setPsSessionStatus(Z)V

    .line 3874
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getScriState()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 3875
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x42023

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3876
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    .line 3880
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriDataCount(Z)V

    .line 3881
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->isPollTimerTrigger(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3883
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriDataCount(Z)V

    .line 3884
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendScriCmd(Z)V

    .line 3888
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string/jumbo v2, "mPollScriStat"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3889
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriPollEnabled:Z

    if-eqz v1, :cond_4

    .line 3890
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriPollTimer:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3892
    :cond_4
    return-void
.end method
