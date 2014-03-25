.class public Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;


# static fields
.field private static final DEBUG:Z = true

.field private static final FAIL_TYPE_NOISY:I = 0x2

.field private static final FAIL_TYPE_PASSWORD_WRONG:I = 0x1

.field private static final FAIL_TYPE_SERVICE_ERROR:I = 0x0

.field private static final FAIL_TYPE_WEAK:I = 0x3

.field private static final INTENSITY_ANIMATION_INTERVAL:I = 0x5a

.field private static final KEY_VOICE_COMMAND1:Ljava/lang/String; = "voice_command1"

.field private static final KEY_VOICE_COMMAND2:Ljava/lang/String; = "voice_command2"

.field private static final KEY_VOICE_COMMAND3:Ljava/lang/String; = "voice_command3"

.field private static final MSG_CANCEL:I = 0x5

.field private static final MSG_RECOGNIZE_FAIL:I = 0x2

.field private static final MSG_RECOGNIZE_PASS:I = 0x1

.field private static final MSG_SERVICE_ERROR:I = 0x3

.field private static final MSG_SHOW_RECOGNIZE_READY:I = 0x0

.field private static final MSG_UPDATE_INTENSITY:I = 0x4

.field private static final SOUND_ATTENUATION:I = -0x6

.field private static final SOUND_PATH:Ljava/lang/String; = "system/media/audio/notifications/Tejat.ogg"

.field private static final TAG:Ljava/lang/String; = "VoiceUnlock"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final TIMEOUT_AFTER_UNLOCK_FAIL:J

.field private isRegistered:Z

.field private mCancel:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mIntensityHandler:Landroid/os/Handler;

.field private mIntensityRunnable:Ljava/lang/Runnable;

.field private volatile mIsRunning:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLaunchApp:Ljava/lang/String;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPkgName:Ljava/lang/String;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mUnlockView:Landroid/view/View;

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mVoiceCommandHandler:Landroid/os/Handler;

.field private mVoiceSerConnection:Landroid/content/ServiceConnection;

.field private mVoiceUnlockView:Landroid/view/View;

.field private mWave:Landroid/widget/ImageView;

.field private mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "unlockView"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 74
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->TIMEOUT_AFTER_UNLOCK_FAIL:J

    .line 81
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z

    .line 97
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 103
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    .line 153
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    .line 154
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mUnlockView:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mPkgName:Ljava/lang/String;

    .line 157
    if-eqz p2, :cond_0

    .line 158
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 160
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$4;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->startRecognize()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z

    return p1
.end method

.method private bindVoiceService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 560
    const-string v1, "bindVoiceService begin  "

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 561
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 562
    .local v0, mVoiceServiceIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 565
    return-void
.end method

.method private handleCancel()V
    .locals 3

    .prologue
    .line 435
    const-string v0, "handleCancel()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity()V

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stop()Z

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 443
    return-void
.end method

.method private handleUpdateIntensity(I)V
    .locals 2
    .parameter "intensity"

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIntensity intensity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 248
    add-int/lit16 p1, p1, -0xc8

    .line 249
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 253
    :cond_2
    const/16 v0, 0x200

    if-ge p1, v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 255
    :cond_3
    const/16 v0, 0x400

    if-ge p1, v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 257
    :cond_4
    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method private handleVoiceCommandFail(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050114

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050115

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050116

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 234
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050117

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 238
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleVoiceCommandPass(I)V
    .locals 3
    .parameter "commandId"

    .prologue
    const/4 v2, -0x2

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stop()Z

    .line 290
    packed-switch p1, :pswitch_data_0

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    .line 307
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVoiceCommandPass commandId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->hasOnDismissAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const-string v0, "onDismissAction is null, set voice unlock dismiss action"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 317
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->pokeWakelock(I)V

    .line 318
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch3"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleVoiceServiceReady()V
    .locals 6

    .prologue
    .line 274
    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->pokeWakelock(I)V

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, durationTime:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 488
    const-string v0, "VoiceUnlock"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 502
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z

    if-nez v2, :cond_1

    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 505
    .local v1, errorid:I
    if-nez v1, :cond_0

    .line 506
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v1           #errorid:I
    :goto_0
    const-string v2, "register voiceCommand end "

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 519
    return-void

    .line 508
    .restart local v1       #errorid:I
    :cond_0
    :try_start_1
    const-string v2, "register voiceCommand fail "

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 510
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z

    .line 512
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register voiceCommand RemoteException =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "register voiceCommand success "

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportFailedBiometricUnlockAttempt()V
    .locals 4

    .prologue
    .line 263
    const-string v0, "VoiceUnlock"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 541
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z

    if-eqz v2, :cond_1

    .line 543
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 544
    .local v1, errorid:I
    if-eqz v1, :cond_0

    .line 545
    const-string v2, "send voice Command fail "

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 557
    .end local v1           #errorid:I
    :goto_0
    return-void

    .line 547
    .restart local v1       #errorid:I
    :cond_0
    const-string v2, "send voice Command success "

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z

    .line 551
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send voice Command RemoteException =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "didn\'t register , can not send voice Command  "

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startRecognize()V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "sendCommand RECOGNIZE_START"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mPkgName:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 499
    :cond_0
    return-void
.end method

.method private unregisterVoicecommand(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 522
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v2, :cond_1

    .line 524
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 525
    .local v1, errorid:I
    if-nez v1, :cond_0

    .line 526
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v1           #errorid:I
    :cond_0
    :goto_0
    const-string v2, "unregisteVoiceCmd end "

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 535
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 536
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z

    .line 538
    :cond_1
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisteVoiceCmd voiceCommand RemoteException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 530
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z

    .line 531
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 418
    const-string v0, "cleanUp()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 423
    const/16 v0, 0x4000

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 447
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 480
    const-string v1, "Unhandled message"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 483
    :goto_0
    return v0

    .line 449
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceServiceReady()V

    :goto_1
    move v0, v1

    .line 483
    goto :goto_0

    .line 452
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandPass(I)V

    goto :goto_1

    .line 455
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 458
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    .line 461
    :sswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    .line 464
    :sswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    .line 471
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    .line 474
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleUpdateIntensity(I)V

    goto :goto_1

    .line 477
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleCancel()V

    goto :goto_1

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 455
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 9
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 109
    const-string v4, "Result"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 110
    .local v2, result:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotified result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mainAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 111
    if-ne v2, v7, :cond_2

    .line 112
    packed-switch p2, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const-string v4, "onNotified RECOGNIZE_START"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 118
    :pswitch_1
    const-string v4, "Result_Info"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 119
    .local v3, verifyResult:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotified RECOGNIZE_NOTIFY verifyResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 120
    if-ne v3, v7, :cond_1

    .line 121
    const-string v4, "Reslut_INfo1"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, commandId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotified RECOGNIZE_NOTIFY commandId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 125
    .end local v0           #commandId:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 129
    .end local v3           #verifyResult:I
    :pswitch_2
    const-string v4, "Result_Info"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, intensity:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotified RECOGNIZE_INTENSITY intensity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 137
    .end local v1           #intensity:I
    :cond_2
    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "voiceUnlockView"

    .prologue
    .line 187
    const-string v0, "initializeView()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    .line 189
    const v0, #id@zz_voiceLockWave#t

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const v1, 0x2020151

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const v1, 0x202014b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 193
    const v0, #id@zz_voiceLockCancel#t

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mCancel:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$5;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    return v0
.end method

.method public onDismiss()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 347
    :goto_0
    return v3

    .line 325
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 326
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDismiss cn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 327
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const/high16 v4, 0x3400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    const/4 v3, 0x1

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "can\'t dismiss keyguard on launch"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 343
    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for intent + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public pokeWakelock(I)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 352
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 355
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "keyguardScreenCallback"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 221
    return-void
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 368
    const-string v0, "start()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 370
    const-string v0, "start() called off of the UI thread"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 374
    const-string v0, "start() called when already running"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->startUi()V

    .line 380
    const-string v0, "register to service"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->bindVoiceService(Landroid/content/Context;)V

    .line 387
    :goto_0
    const-string v0, "start() mIsRunning = true"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 388
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .line 389
    return v2

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->registerVoiceCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startUi()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "startUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 211
    const-string v0, "startUi() called off of the UI thread"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_1
    return-void
.end method

.method public stop()Z
    .locals 3

    .prologue
    .line 394
    const-string v1, "stop()"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 396
    const-string v1, "stop() called off of the UI thread"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .line 404
    .local v0, mWasRunning:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stopUi()V

    .line 406
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v1, :cond_1

    .line 407
    const-string v1, "unregister to service"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->unregisterVoicecommand(Ljava/lang/String;)V

    .line 411
    :cond_1
    const-string v1, "stop() mIsRunning  = false"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .line 413
    return v0
.end method

.method public stopAndShowBackup()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "VoiceUnlock"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 429
    return-void
.end method

.method public stopUi()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "stopUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    const-string v0, "mVoiceUnlockView is null in stopUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
