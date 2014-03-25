.class public Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;
.super Landroid/widget/RelativeLayout;
.source "PowerOffAlarmView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SNOOZE:Ljava/lang/String; = "10"

.field private static final DEFAULT_VOLUME_BEHAVIOR:Ljava/lang/String; = "2"

.field private static final DISABLE_POWER_KEY_ACTION:Ljava/lang/String; = "android.intent.action.DISABLE_POWER_KEY"

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final NORMAL_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot"

.field private static final NORMAL_BOOT_DONE_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x4b0L

.field private static final PING_MESSAGE_WHAT:I = 0x65

.field protected static final SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field private static final SNOOZE:Ljava/lang/String; = "android.intent.action.SNOOZE"

.field private static final TAG:Ljava/lang/String; = "PowerOffAlarm"

.field private static final UPDATE_LABEL:I = 0x63

.field private static final UPDATE_LABEL_ACTION:Ljava/lang/String; = "update.power.off.alarm.label"


# instance fields
.field private final DELAY_TIME_SECONDS:I

.field private SUPPORT_VOICE_UI:Z

.field private isRegistered:Z

.field protected mAlarm:Lcom/android/internal/policy/impl/keyguard/Alarm;

.field private mAm:Landroid/app/AlarmManager;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field mFullscreenStyle:Z

.field private mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDocked:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPingEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTotalFailedPatternAttempts:I

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVcTips:Landroid/widget/TextView;

.field private mVcTipsContainer:Landroid/widget/LinearLayout;

.field private mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mVoiceCommandHandler:Landroid/os/Handler;

.field private mVoiceSerConnection:Landroid/content/ServiceConnection;

.field private mVolumeBehavior:I

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->DELAY_TIME_SECONDS:I

    .line 75
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 76
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mTotalFailedPatternAttempts:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->titleView:Landroid/widget/TextView;

    .line 83
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->SUPPORT_VOICE_UI:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mIsDocked:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mPingEnabled:Z

    .line 106
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 112
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVoiceCommandHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    .line 405
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    .line 207
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    .line 208
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->SUPPORT_VOICE_UI:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->registerVoiceCmdService(Landroid/content/Context;)V

    .line 211
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVoiceCommandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->triggerPing()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->snooze()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z

    return p1
.end method

.method private bindVoiceService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 498
    const-string v1, "PowerOffAlarm"

    const-string v2, "bindVoiceService begin  "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 500
    .local v0, mVoiceServiceIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 503
    return-void
.end method

.method private enableEventDispatching(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 386
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 389
    .local v1, wm:Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v1           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PowerOffAlarm"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerOff()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->unregisteVoiceCmd()V

    .line 313
    const-string v0, "stop_ringtone"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendBR(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private powerOn()V
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->enableEventDispatching(Z)V

    .line 300
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->stopPlayAlarm()V

    .line 302
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "PowerOffAlarm"

    const-string v1, "start boot animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "android.intent.action.normal.boot"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendBR(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->unregisteVoiceCmd()V

    .line 308
    return-void
.end method

.method private registerVoiceCmdService(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v1, :cond_0

    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->bindVoiceService(Landroid/content/Context;)V

    .line 456
    :goto_0
    return-void

    .line 451
    :cond_0
    const-string v0, "powerOffAlarm"

    .line 452
    .local v0, pkgName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->registerVoiceCommand(Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 459
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z

    if-nez v2, :cond_1

    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 462
    .local v1, errorid:I
    if-nez v1, :cond_0

    .line 463
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v1           #errorid:I
    :goto_0
    const-string v2, "PowerOffAlarm"

    const-string v3, "register voiceCommand end "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 465
    .restart local v1       #errorid:I
    :cond_0
    :try_start_1
    const-string v2, "PowerOffAlarm"

    const-string v3, "register voiceCommand fail "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 467
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z

    .line 469
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 470
    const-string v2, "PowerOffAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register voiceCommand RemoteException =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "PowerOffAlarm"

    const-string v3, "register voiceCommand success "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBR(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 398
    const-string v0, "PowerOffAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send BR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 5
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 479
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z

    if-eqz v2, :cond_1

    .line 481
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 482
    .local v1, errorid:I
    if-eqz v1, :cond_0

    .line 483
    const-string v2, "PowerOffAlarm"

    const-string v3, "send voice Command fail "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v1           #errorid:I
    :goto_0
    return-void

    .line 485
    .restart local v1       #errorid:I
    :cond_0
    const-string v2, "PowerOffAlarm"

    const-string v3, "send voice Command success "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z

    .line 489
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 490
    const-string v2, "PowerOffAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send voice Command RemoteException =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "PowerOffAlarm"

    const-string v3, "didn\'t register , can not send voice Command  "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private snooze()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SNOOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 294
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->unregisteVoiceCmd()V

    .line 295
    return-void
.end method

.method private stopPlayAlarm()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 382
    return-void
.end method

.method private triggerPing()V
    .locals 4

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mPingEnabled:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->ping()V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 288
    :cond_0
    return-void
.end method

.method private unregisteVoiceCmd()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 425
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v3, :cond_1

    .line 426
    const-string v2, "powerOffAlarm"

    .line 427
    .local v2, pkgName:Ljava/lang/String;
    invoke-direct {p0, v2, v4, v4, v7}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 430
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v3, v2, v4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 431
    .local v1, errorid:I
    if-nez v1, :cond_0

    .line 432
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v1           #errorid:I
    :cond_0
    :goto_0
    const-string v3, "PowerOffAlarm"

    const-string v4, "unregisteVoiceCmd end "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 441
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 442
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z

    .line 444
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_1
    return-void

    .line 434
    .restart local v2       #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PowerOffAlarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisteVoiceCmd voiceCommand RemoteException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z

    .line 437
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 332
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public handleVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 15
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 118
    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, actionExtraResult:I
    const-string v11, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, actionExtraResultInfo:I
    const-string v11, "Reslut_INfo1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, actionExtraResultInfoString:Ljava/lang/String;
    const/4 v11, 0x1

    if-eq v1, v11, :cond_1

    .line 123
    const-string v11, "PowerOffAlarm"

    const-string v12, "handleVoiceCommandNotified with failed result , just return"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 126
    :cond_1
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_4

    .line 127
    packed-switch p2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 129
    :pswitch_2
    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    .line 130
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v11, :cond_0

    .line 131
    const-string v11, "powerOffAlarm"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {p0, v11, v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 138
    .local v6, notifyResult:I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_0

    .line 139
    const-string v11, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 140
    .local v4, commandId:I
    const-string v11, "PowerOffAlarm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "voice command id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v11, 0x5

    if-ne v4, v11, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->snooze()V

    goto :goto_0

    .line 143
    :cond_2
    const/16 v11, 0x10

    if-ne v4, v11, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOn()V

    goto :goto_0

    .line 145
    :cond_3
    const/16 v11, 0x11

    if-ne v4, v11, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOff()V

    goto :goto_0

    .line 155
    .end local v4           #commandId:I
    .end local v6           #notifyResult:I
    :cond_4
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 156
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 157
    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 158
    .local v5, indicatorResult:I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_0

    .line 159
    const-string v11, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, stringCommonInfo:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const v12, 0x205011d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, quotaStart:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const v12, 0x205011e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, quotaEnd:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 163
    const-string v8, "\""

    .line 164
    const-string v7, "\""

    .line 166
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v9, sb:Ljava/lang/StringBuilder;
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const v12, 0x205011a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const v12, 0x205011c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const v12, 0x205011f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const v12, 0x205011b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;

    if-eqz v11, :cond_6

    .line 175
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_6
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 178
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 377
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "PowerOffAlarm"

    const-string v1, "onDetachedFromWindow ...."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 541
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 223
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 224
    const-string v3, "PowerOffAlarm"

    const-string v5, "onFinishInflate ... "

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->setKeepScreenOn(Z)V

    .line 226
    const v3, 0x210006e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->titleView:Landroid/widget/TextView;

    .line 227
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->SUPPORT_VOICE_UI:Z

    if-eqz v3, :cond_0

    .line 228
    const v3, 0x2100073

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;

    .line 229
    const v3, 0x2100072

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;

    .line 231
    :cond_0
    const v3, 0x2100074

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    .line 232
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;)V

    .line 233
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->setFocusableInTouchMode(Z)V

    .line 234
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->triggerPing()V

    .line 237
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, ifilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, dockStatus:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 240
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mIsDocked:Z

    .line 245
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "alarm_killed"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v3, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v3, "update.power.off.alarm.label"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 253
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mAm:Landroid/app/AlarmManager;

    .line 254
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->enableEventDispatching(Z)V

    .line 256
    return-void

    .line 240
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 251
    .restart local v1       #filter:Landroid/content/IntentFilter;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_1
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 526
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 536
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 531
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->reset()V

    .line 346
    const-string v0, "PowerOffAlarm"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 320
    .local v0, result:Z
    return v0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "target"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 261
    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    .line 276
    :pswitch_0
    const-string v1, "PowerOffAlarm"

    const-string v2, "Trigger detected on unhandled resource. Skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void

    .line 263
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->snooze()V

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOff()V

    goto :goto_0

    .line 271
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOn()V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x202004d
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 215
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 219
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 373
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method
