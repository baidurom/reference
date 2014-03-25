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
    .line 326
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 369
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 374
    return-void
.end method

.method public onDockStatusUpdate(I)V
    .locals 2
    .parameter "dockState"

    .prologue
    .line 462
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    :cond_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Disable biometric unlock after dock to desk device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 474
    :cond_2
    return-void
.end method

.method onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 351
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

    .line 359
    const-string v0, "KeyguardViewMediator"

    const-string v2, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 363
    :cond_0
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 7
    .parameter "simState"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 379
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimStateChanged: "

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

    .line 381
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 382
    .local v0, lastSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 386
    .local v1, lastWasLocked:Z
    :goto_0
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 457
    :cond_1
    :goto_1
    return-void

    .end local v1           #lastWasLocked:Z
    :cond_2
    move v1, v2

    .line 382
    goto :goto_0

    .line 391
    .restart local v1       #lastWasLocked:Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 394
    const-string v2, "KeyguardViewMediator"

    const-string v3, "INTENT_VALUE_ICC_ABSENT and keygaurd isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    goto :goto_1

    .line 399
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_1

    .line 408
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 409
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {v3, v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    goto :goto_1

    .line 413
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, p1, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimMeLeftRetryCount(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 415
    const-string v2, "KeyguardViewMediator"

    const-string v3, "SIM ME lock retrycount is 0 so SimME is not showing, only to show dialog"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$MeLockedDialogCallback;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {v3, v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$MeLockedDialogCallback;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    goto :goto_1

    .line 420
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, p1, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, p1, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, p1, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 423
    :cond_8
    const-string v3, "KeyguardViewMediator"

    const-string v4, "We have dismissed locks, so, we should reset the dismiss flags"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, p2, v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 425
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, p2, v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 426
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, p2, v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 429
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHiding()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 431
    const-string v2, "KeyguardViewMediator"

    const-string v3, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing, we need to show the keyguard so the user can enter their sim pin"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_1

    .line 436
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 443
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 444
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 449
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 450
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserRemoved(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 346
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 334
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v0, options:Landroid/os/Bundle;
    const-string v1, "showuserswitcher"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 337
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 340
    monitor-exit v2

    .line 341
    return-void

    .line 340
    .end local v0           #options:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
