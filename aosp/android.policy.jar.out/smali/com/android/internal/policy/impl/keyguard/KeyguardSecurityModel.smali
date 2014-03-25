.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    return-void
.end method

.method private isBiometricUnlockSuppressed()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 86
    .local v1, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 88
    .local v0, backupIsTimedOut:Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #backupIsTimedOut:Z
    :cond_2
    move v0, v3

    .line 86
    goto :goto_0
.end method


# virtual methods
.method getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .parameter "mode"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isBiometricUnlockSuppressed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isBiometricUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 161
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 157
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isVoiceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Voice:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 2
    .parameter "mode"

    .prologue
    .line 171
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 178
    .end local p1
    :goto_0
    return-object p1

    .line 174
    .restart local p1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_0

    .line 176
    :pswitch_1
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 7

    .prologue
    .line 94
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 96
    .local v3, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    .line 97
    .local v0, dmLocked:Z
    if-eqz v0, :cond_1

    .line 98
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 140
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 104
    .local v1, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinPukOrMeRequired(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 106
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinPukOrMeRequired(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 108
    :cond_3
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinPukOrMeRequired(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe3:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 110
    :cond_4
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinPukOrMeRequired(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe4:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 112
    :cond_5
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 113
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->AlarmBoot:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 115
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 116
    .local v2, security:I
    sparse-switch v2, :sswitch_data_0

    .line 137
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown unlock mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 120
    :goto_1
    goto :goto_0

    .line 118
    :cond_7
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_1

    .line 124
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 126
    :goto_2
    goto :goto_0

    .line 124
    :cond_8
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_2

    .line 130
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_3
    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_3

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method isBiometricUnlockEnabled()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinPukOrMeRequired(I)Z
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 184
    .local v1, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 187
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimMeLeftRetryCount(I)I

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 199
    .end local v0           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    return v2
.end method

.method isVoiceUnlockEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 59
    return-void
.end method
