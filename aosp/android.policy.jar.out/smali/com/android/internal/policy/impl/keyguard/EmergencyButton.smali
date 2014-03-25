.class public Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "EmergencyButton"


# instance fields
.field private mEmergencyButtonExt:Lcom/mediatek/common/policy/IEmergencyButtonExt;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsSecure:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 92
    :try_start_0
    const-class v1, Lcom/mediatek/common/policy/IEmergencyButtonExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/policy/IEmergencyButtonExt;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/common/policy/IEmergencyButtonExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private eccButtonShouldShow()Z
    .locals 10

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, bd:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v4

    .line 188
    .local v4, maxSimId:I
    add-int/lit8 v7, v4, 0x1

    new-array v3, v7, [Z

    .line 190
    .local v3, isServiceSupportEcc:[Z
    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 192
    .local v6, tmex:Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_3

    .line 193
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v7

    if-gt v2, v7, :cond_3

    .line 194
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    invoke-interface {v6, v2}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v0

    .line 199
    :goto_1
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 200
    .local v5, ss:Landroid/telephony/ServiceState;
    const-string v7, "EmergencyButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ss.getState() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ss.isEmergencyOnly()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for simId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 202
    :cond_0
    const/4 v7, 0x1

    aput-boolean v7, v3, v2

    .line 193
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v5           #ss:Landroid/telephony/ServiceState;
    :cond_1
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getServiceState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 204
    .restart local v5       #ss:Landroid/telephony/ServiceState;
    :cond_2
    const/4 v7, 0x0

    aput-boolean v7, v3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    .end local v2           #i:I
    .end local v5           #ss:Landroid/telephony/ServiceState;
    .end local v6           #tmex:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "EmergencyButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getServiceState error e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/common/policy/IEmergencyButtonExt;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getCurSlotId()I

    move-result v8

    invoke-interface {v7, v3, v8}, Lcom/mediatek/common/policy/IEmergencyButtonExt;->isSimInService([ZI)Z

    move-result v7

    return v7
.end method

.method private getCurSlotId()I
    .locals 3

    .prologue
    .line 228
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, securityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 103
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 109
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 114
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 116
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 125
    .local v0, phoneState:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mIsSecure:Z

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(I)V

    .line 129
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 138
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/common/policy/IEmergencyButtonExt;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getCurSlotId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/mediatek/common/policy/IEmergencyButtonExt;->addSlotIdForEmergencyDialer(Landroid/content/Intent;I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateEmergencyCallButton(I)V
    .locals 10
    .parameter "phoneState"

    .prologue
    const/4 v5, 0x0

    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, enabled:Z
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 154
    const/4 v3, 0x1

    .line 171
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v6

    .line 173
    .local v6, dmLocked:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/common/policy/IEmergencyButtonExt;

    invoke-interface {v0}, Lcom/mediatek/common/policy/IEmergencyButtonExt;->enableEccOnSlide()Z

    move-result v8

    .line 175
    .local v8, keyguardUtilShowEcc:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->eccButtonShouldShow()Z

    move-result v7

    .line 176
    .local v7, eccShouldShow:Z
    if-nez v3, :cond_1

    if-nez v8, :cond_1

    if-eqz v6, :cond_4

    :cond_1
    if-eqz v7, :cond_4

    const/4 v3, 0x1

    .line 177
    :goto_1
    const-string v0, "EmergencyButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dmLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keyguardUtilShowEcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eccShouldShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V

    .line 182
    return-void

    .line 155
    .end local v6           #dmLocked:Z
    .end local v7           #eccShouldShow:Z
    .end local v8           #keyguardUtilShowEcc:Z
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v9

    .line 157
    .local v9, simLocked:Z
    if-eqz v9, :cond_3

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v3

    goto :goto_0

    .line 166
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mIsSecure:Z

    goto :goto_0

    .end local v9           #simLocked:Z
    .restart local v6       #dmLocked:Z
    .restart local v7       #eccShouldShow:Z
    .restart local v8       #keyguardUtilShowEcc:Z
    :cond_4
    move v3, v5

    .line 176
    goto :goto_1
.end method
