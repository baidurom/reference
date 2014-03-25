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

.field private mBoundToService:Z

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

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mUnlockView:Landroid/view/View;

.field private mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

.field private mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

.field private mVoiceUnlockView:Landroid/view/View;

.field private mWave:Landroid/widget/ImageView;

.field private mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "unlockView"

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 70
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->TIMEOUT_AFTER_UNLOCK_FAIL:J

    .line 77
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    .line 104
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 106
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mUnlockView:Landroid/view/View;

    .line 107
    if-eqz p2, :cond_0

    .line 108
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 110
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    .line 112
    const-string v0, "voicecommand"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleCancel()V
    .locals 3

    .prologue
    .line 445
    const-string v0, "handleCancel()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity()V

    .line 451
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stop()Z

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 453
    return-void
.end method

.method private handleUpdateIntensity(I)V
    .locals 2
    .parameter "intensity"

    .prologue
    .line 241
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

    .line 242
    add-int/lit16 p1, p1, -0xc8

    .line 243
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 247
    :cond_2
    const/16 v0, 0x200

    if-ge p1, v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 249
    :cond_3
    const/16 v0, 0x400

    if-ge p1, v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 251
    :cond_4
    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    .line 252
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

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    return-void

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050115

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050116

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050117

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 228
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050118

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleVoiceCommandPass(I)V
    .locals 2
    .parameter "commandId"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stop()Z

    .line 284
    packed-switch p1, :pswitch_data_0

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    .line 298
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

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->hasOnDismissAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    const-string v0, "onDismissAction is null, set voice unlock dismiss action"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 308
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->pokeWakelock(I)V

    .line 309
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch3"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 284
    nop

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
    .line 268
    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->pokeWakelock(I)V

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, durationTime:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 498
    const-string v0, "VoiceUnlock"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method private reportFailedBiometricUnlockAttempt()V
    .locals 4

    .prologue
    .line 257
    const-string v0, "VoiceUnlock"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    const-string v0, "cleanUp()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 427
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    .line 428
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    .line 429
    return-void
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 433
    const/16 v0, 0x4000

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 457
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 490
    const-string v1, "Unhandled message"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 493
    :goto_0
    return v0

    .line 459
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceServiceReady()V

    :goto_1
    move v0, v1

    .line 493
    goto :goto_0

    .line 462
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandPass(I)V

    goto :goto_1

    .line 465
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 468
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    .line 471
    :sswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    .line 474
    :sswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    .line 481
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    .line 484
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleUpdateIntensity(I)V

    goto :goto_1

    .line 487
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleCancel()V

    goto :goto_1

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 465
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "voiceUnlockView"

    .prologue
    .line 181
    const-string v0, "initializeView()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    .line 183
    const v0, #id@zz_voiceLockWave#t

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const v1, 0x2020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const v1, 0x202014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 187
    const v0, #id@zz_voiceLockCancel#t

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mCancel:Landroid/widget/ImageView;

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$4;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    return v0
.end method

.method public onDismiss()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 338
    :goto_0
    return v3

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 317
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

    .line 318
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 320
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const/high16 v4, 0x3400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 326
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 332
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

    .line 338
    const/4 v3, 0x1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "can\'t dismiss keyguard on launch"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 333
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 334
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

    goto :goto_0
.end method

.method public pokeWakelock(I)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 343
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 346
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "keyguardScreenCallback"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 215
    return-void
.end method

.method public start()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() mBoundToService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 361
    const-string v1, "start() called off of the UI thread"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 364
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    if-eqz v1, :cond_1

    .line 365
    const-string v1, "start() called when already running"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->startUi()V

    .line 371
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    if-nez v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v1, :cond_2

    .line 374
    :try_start_0
    const-string v1, "register to service"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    invoke-interface {v1, v2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->registerListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V

    .line 376
    const-string v1, "sendCommand RECOGNIZE_START"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 379
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 387
    :cond_2
    :goto_0
    const-string v1, "start() mIsRunning = true"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 388
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .line 389
    return v6

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public startUi()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "startUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 205
    const-string v0, "startUi() called off of the UI thread"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_1
    return-void
.end method

.method public stop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop() mBoundToService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 396
    const-string v2, "stop() called off of the UI thread"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .line 402
    .local v1, mWasRunning:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stopUi()V

    .line 404
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    if-eqz v2, :cond_2

    .line 405
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v2, :cond_1

    .line 407
    :try_start_0
    const-string v2, "unregister to service"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    invoke-interface {v2, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->unRegisterListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    .line 419
    :goto_1
    const-string v2, "stop() mIsRunning  = false"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 420
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .line 421
    return v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_2
    const-string v2, "Attempt to unRegisterListener from Voice Unlock when not bound"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopAndShowBackup()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "VoiceUnlock"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 439
    return-void
.end method

.method public stopUi()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "stopUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v0, "mVoiceUnlockView is null in stopUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
