.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 364
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 369
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 346
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "KeyguardViewMediator"

    const-string v2, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 358
    :cond_0
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 6
    .parameter "simState"

    .prologue
    const/4 v1, 0x0

    .line 373
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSimStateChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 376
    .local v0, lastSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 377
    .local v1, lastWasLocked:Z
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 382
    :pswitch_0
    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v2, :cond_3

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 385
    const-string v2, "KeyguardViewMediator"

    const-string v3, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 393
    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 390
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 397
    :pswitch_1
    monitor-enter p0

    .line 398
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_5

    .line 399
    const-string v2, "KeyguardViewMediator"

    const-string v3, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 405
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 403
    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 408
    :pswitch_2
    monitor-enter p0

    .line 410
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v2

    if-nez v2, :cond_6

    .line 411
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    .line 412
    monitor-exit p0

    goto :goto_0

    .line 424
    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 415
    :cond_6
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_7

    .line 416
    const-string v2, "KeyguardViewMediator"

    const-string v3, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 424
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    .line 420
    :cond_7
    const-string v2, "KeyguardViewMediator"

    const-string v3, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 427
    :pswitch_3
    monitor-enter p0

    .line 428
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 429
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 431
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 434
    :pswitch_4
    monitor-enter p0

    .line 435
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    if-ne v2, v3, :cond_9

    .line 436
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 438
    :cond_9
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v2

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 7
    .parameter "simState"
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 446
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimStateChangedGemini: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 511
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 454
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 455
    .local v0, lastSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v2

    .line 457
    .local v1, lastWasLocked:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v2, :cond_0

    .line 458
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 460
    const-string v2, "KeyguardViewMediator"

    const-string v3, "INTENT_VALUE_ICC_ABSENT and keygaurd isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 465
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 472
    .end local v0           #lastSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v1           #lastWasLocked:Z
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 473
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {v3, v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    goto :goto_0

    .line 477
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, p1, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, p1, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 479
    :cond_7
    const-string v3, "KeyguardViewMediator"

    const-string v4, "We have dismissed PIN, so, we should reset the PIN flag"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 481
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 484
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_9

    .line 486
    const-string v2, "KeyguardViewMediator"

    const-string v3, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing, we need to show the keyguard so the user can enter their sim pin"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 491
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 497
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 503
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onUserRemoved(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 341
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 327
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 328
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, options:Landroid/os/Bundle;
    const-string v1, "showuserswitcher"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    const-string v1, "showsecuritychallenge"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 335
    monitor-exit v2

    .line 336
    return-void

    .line 335
    .end local v0           #options:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
