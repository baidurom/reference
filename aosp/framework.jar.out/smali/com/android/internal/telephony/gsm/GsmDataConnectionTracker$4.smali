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
    .line 3462
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3464
    const/4 v0, 0x0

    .line 3466
    .local v0, resetFlag:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->isDataTransmitting()Z

    move-result v0

    .line 3468
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getScriState()I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getScriState()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 3469
    :cond_0
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

    .line 3471
    if-eqz v0, :cond_1

    .line 3472
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setPsSessionStatus(Z)V

    .line 3474
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getScriState()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 3475
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x42022

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3476
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    .line 3480
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriDataCount(Z)V

    .line 3481
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->isPollTimerTrigger(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3483
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriDataCount(Z)V

    .line 3484
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendScriCmd(Z)V

    .line 3488
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string/jumbo v2, "mPollScriStat"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3489
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriPollEnabled:Z

    if-eqz v1, :cond_3

    .line 3490
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriPollTimer:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3492
    :cond_3
    return-void
.end method
