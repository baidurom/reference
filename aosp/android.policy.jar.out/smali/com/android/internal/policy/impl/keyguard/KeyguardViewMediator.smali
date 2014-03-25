.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$MeLockedDialogCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    }
.end annotation


# static fields
.field private static final ALARM_BOOT:I = 0x73

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_MESSAGE:Z = true

.field private static final DBG_WAKE:Z = true

.field static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field private static final HIDE:I = 0x3

.field public static final IPO_BOOT:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final IPO_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final LAUNCH_PWROFF_ALARM:Ljava/lang/String; = "android.intent.action.LAUNCH_POWEROFF_ALARM"

.field private static final MSG_DM_KEYGUARD_UPDATE:I = 0x3e9

.field private static final MSG_IPO_SHUT_DOWN_UPDATE:I = 0x3ea

.field private static final NORMAL_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot"

.field private static final NORMAL_BOOT_DONE_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final NORMAL_SHUTDOWN_ACTION:Ljava/lang/String; = "android.intent.action.normal.shutdown"

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field public static final OMADM_LAWMO_LOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field public static final OMADM_LAWMO_UNLOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field static final REMOVE_IPOWIN:Ljava/lang/String; = "alarm.boot.remove.ipowin"

.field private static final RESET:I = 0x4

.field public static final RESET_FOR_DM_LOCK:Ljava/lang/String; = "dmlock_reset"

.field private static final RESHOW_ANYWHERE:I = 0x74

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_ASSISTANT:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8

.field private static mExternallyEnabled:Z

.field private static mHidden:Z

.field public static mIsAlarmShutDown:Z

.field private static mShowing:Z

.field private static sWakeMSGId:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mHandler:Landroid/os/Handler;

.field private mIsIPOBoot:Z

.field private mKeyguardDonePending:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockScreenMediatorExt:Lcom/mediatek/common/policy/ILockScreenExt;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowingLockIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentIntent:Landroid/content/Intent;

.field mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 218
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 221
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 269
    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    .line 1914
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsAlarmShutDown:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 11
    .parameter "context"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockScreenMediatorExt:Lcom/mediatek/common/policy/ILockScreenExt;

    .line 119
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    .line 174
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 214
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 243
    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 254
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 256
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 326
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 477
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 1174
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1315
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v6, p0, v9, v10, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 534
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 535
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 536
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 537
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v9, "show keyguard"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 538
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 541
    :try_start_0
    const-class v6, Lcom/mediatek/common/policy/ILockScreenExt;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/policy/ILockScreenExt;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockScreenMediatorExt:Lcom/mediatek/common/policy/ILockScreenExt;

    .line 542
    const-string v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lock screen instance created in keyguard mediator "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockScreenMediatorExt:Lcom/mediatek/common/policy/ILockScreenExt;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v9, "keyguardWakeAndHandOff"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 547
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 550
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 551
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v6, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v6, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v6, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v6, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v6, "android.intent.action.normal.shutdown"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v6, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v6, "android.intent.action.normal.boot"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 571
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 573
    if-eqz p2, :cond_6

    .end local p2
    :goto_1
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 575
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 577
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 579
    .local v5, wm:Landroid/view/WindowManager;
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1, v5, v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 582
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 583
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v9, 0x2800

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 587
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "show_status_bar_lock"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    .line 589
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 591
    new-instance v6, Landroid/media/SoundPool;

    invoke-direct {v6, v7, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 592
    const-string v6, "lock_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, soundPath:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 594
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 596
    :cond_0
    if-eqz v4, :cond_1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v6, :cond_2

    .line 597
    :cond_1
    const-string v6, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to load lock sound from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_2
    const-string v6, "unlock_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 600
    if-eqz v4, :cond_3

    .line 601
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 603
    :cond_3
    if-eqz v4, :cond_4

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v6, :cond_5

    .line 604
    :cond_4
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load unlock sound from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #integer@config_lockSoundVolumeDb#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 608
    .local v3, lockSoundDefaultAttenuation:I
    const-wide/high16 v6, 0x4024

    int-to-float v8, v3

    const/high16 v9, 0x41a0

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 609
    return-void

    .line 543
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #lockSoundDefaultAttenuation:I
    .end local v4           #soundPath:Ljava/lang/String;
    .end local v5           #wm:Landroid/view/WindowManager;
    .restart local p2
    :catch_0
    move-exception v1

    .line 544
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "KeyguardViewMediator"

    const-string v9, "exception: "

    invoke-static {v6, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 573
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :cond_6
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .end local p2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v5       #wm:Landroid/view/WindowManager;
    :cond_7
    move v6, v8

    .line 587
    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHiding()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleWakeWhenReady(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleAlarmBoot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleDMKeyguardUpdate(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendRemoveIPOWinBroadcast()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->startAlarm()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private adjustStatusBarLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1601
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v4, :cond_0

    .line 1602
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1605
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v4, :cond_2

    .line 1606
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Could not get status bar manager"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    :cond_1
    :goto_0
    return-void

    .line 1611
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    .line 1613
    .local v3, isSecure:Z
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v4, :cond_3

    .line 1615
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 1616
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v4, :cond_3

    .line 1617
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v5, #string@status_bar_device_locked#t

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1619
    .local v0, contentDescription:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "secure"

    const v6, #drawable@stat_sys_secure#t

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1622
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1634
    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 1636
    .local v1, flags:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1637
    const/4 v2, 0x0

    .line 1641
    .local v2, isOrangeLockScreenInstalled:Z
    const/high16 v4, 0x100

    or-int/2addr v1, v4

    .line 1642
    if-nez v3, :cond_9

    .line 1646
    :goto_2
    if-eqz v3, :cond_4

    .line 1648
    const/high16 v4, 0x8

    or-int/2addr v1, v4

    .line 1650
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockScreenMediatorExt:Lcom/mediatek/common/policy/ILockScreenExt;

    if-eqz v4, :cond_5

    .line 1651
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockScreenMediatorExt:Lcom/mediatek/common/policy/ILockScreenExt;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/mediatek/common/policy/ILockScreenExt;->isOrangeLockscreenInstalled(Landroid/content/Context;)Z

    move-result v2

    .line 1654
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isAssistantAvailable()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    .line 1655
    :cond_6
    const/high16 v4, 0x200

    or-int/2addr v1, v4

    .line 1660
    .end local v2           #isOrangeLockScreenInstalled:Z
    :cond_7
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mHidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSecure="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> flags=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 1665
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_0

    .line 1625
    .end local v1           #flags:I
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v4, :cond_3

    .line 1626
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "secure"

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1627
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    goto/16 :goto_1

    .line 1644
    .restart local v1       #flags:I
    .restart local v2       #isOrangeLockScreenInstalled:Z
    :cond_9
    const/high16 v4, 0x1

    or-int/2addr v1, v4

    goto :goto_2
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 756
    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1877
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #drawable@ic_dialog_alert#t

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #string@ok#t

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1890
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1891
    return-object v0
.end method

.method private doKeyguardLaterLocked()V
    .locals 17

    .prologue
    .line 710
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 713
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v14, "screen_off_timeout"

    const/16 v15, 0x7530

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v2, v14

    .line 717
    .local v2, displayTimeout:J
    const-string v14, "lock_screen_lock_after_timeout"

    const/16 v15, 0x1388

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v5, v14

    .line 722
    .local v5, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v7

    .line 726
    .local v7, policyTimeout:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-lez v14, :cond_0

    .line 728
    const-wide/16 v14, 0x0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 729
    sub-long v14, v7, v2

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 734
    .local v10, timeout:J
    :goto_0
    const-string v14, "KeyguardViewMediator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doKeyguardLaterLocked enter displayTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lockAfterTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", policyTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", timeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gtz v14, :cond_1

    .line 739
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 752
    :goto_1
    return-void

    .line 731
    .end local v10           #timeout:J
    :cond_0
    move-wide v10, v5

    .restart local v10       #timeout:J
    goto :goto_0

    .line 743
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    add-long v12, v14, v10

    .line 744
    .local v12, when:J
    new-instance v4, Landroid/content/Intent;

    const-string v14, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v4, intent:Landroid/content/Intent;
    const-string v14, "seq"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v16, 0x1000

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 748
    .local v9, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 749
    const-string v14, "KeyguardViewMediator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 14
    .parameter "options"

    .prologue
    .line 968
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    .line 970
    .local v4, isSimSecure:Z
    sget-boolean v11, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v11, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 971
    :cond_1
    const-string v11, "KeyguardViewMediator"

    const-string v12, "doKeyguard: not showing because externally disabled"

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :goto_0
    return-void

    .line 986
    :cond_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 987
    const-string v11, "KeyguardViewMediator"

    const-string v12, "doKeyguard: not showing because it is already showing"

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_3
    const-string v11, "KeyguardViewMediator"

    const-string v12, "doKeyguard: get keyguard.no_require_sim property before"

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v11, "keyguard.no_require_sim"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v9, 0x1

    .line 994
    .local v9, requireSim:Z
    :goto_1
    const-string v11, "KeyguardViewMediator"

    const-string v12, "doKeyguard: get keyguard.no_require_sim property after"

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v8

    .line 996
    .local v8, provisioned:Z
    const/4 v6, 0x0

    .line 998
    .local v6, lockedOrMissing:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v11

    if-gt v3, v11, :cond_5

    .line 999
    if-nez v6, :cond_4

    invoke-direct {p0, v3, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSimLockedOrMissing(IZ)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_4
    const/4 v6, 0x1

    .line 1000
    :goto_3
    if-eqz v6, :cond_8

    .line 1008
    :cond_5
    const/4 v5, 0x0

    .line 1011
    .local v5, keyguardDisable:Z
    const/4 v7, 0x1

    .line 1012
    .local v7, motaUpdateFirst:Z
    if-eqz v7, :cond_9

    .line 1014
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    .line 1027
    :goto_4
    const-string v11, "KeyguardViewMediator"

    const-string v12, "doKeyguard: keyguardDisable query end"

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v2

    .line 1031
    .local v2, dmLocked:Z
    const-string v11, "KeyguardViewMediator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lockedOrMissing is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", requireSim="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", provisioned="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", keyguardisable="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dmLocked="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    if-nez v6, :cond_d

    if-nez v8, :cond_d

    if-nez v2, :cond_d

    .line 1035
    const-string v11, "KeyguardViewMediator"

    const-string v12, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 993
    .end local v2           #dmLocked:Z
    .end local v3           #i:I
    .end local v5           #keyguardDisable:Z
    .end local v6           #lockedOrMissing:Z
    .end local v7           #motaUpdateFirst:Z
    .end local v8           #provisioned:Z
    .end local v9           #requireSim:Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 999
    .restart local v3       #i:I
    .restart local v6       #lockedOrMissing:Z
    .restart local v8       #provisioned:Z
    .restart local v9       #requireSim:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 998
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1017
    .restart local v5       #keyguardDisable:Z
    .restart local v7       #motaUpdateFirst:Z
    :cond_9
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1018
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v11, "lockscreen.disabled"

    invoke-static {v1, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1019
    .local v10, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1020
    .local v0, booleanValue:Z
    if-eqz v10, :cond_a

    .line 1021
    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v0, 0x1

    .line 1023
    :cond_a
    :goto_5
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_c

    if-eqz v0, :cond_c

    const/4 v5, 0x1

    :goto_6
    goto/16 :goto_4

    .line 1021
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 1023
    :cond_c
    const/4 v5, 0x0

    goto :goto_6

    .line 1041
    .end local v0           #booleanValue:Z
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v10           #value:Ljava/lang/String;
    .restart local v2       #dmLocked:Z
    :cond_d
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_e

    if-eqz v5, :cond_e

    if-nez v6, :cond_e

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v11

    if-nez v11, :cond_e

    .line 1043
    const-string v11, "KeyguardViewMediator"

    const-string v12, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1047
    :cond_e
    const-string v11, "KeyguardViewMediator"

    const-string v12, "doKeyguard: showing the lock screen"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private handleAlarmBoot()V
    .locals 1

    .prologue
    .line 1764
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    .line 1765
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1767
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    if-eqz v0, :cond_1

    .line 1768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    .line 1770
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1771
    return-void
.end method

.method private handleDMKeyguardUpdate(Z)V
    .locals 4
    .parameter "lock"

    .prologue
    .line 1899
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDMKeyguardUpdate lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1901
    const-string v1, "KeyguardViewMediator"

    const-string v2, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 1910
    :goto_0
    return-void

    .line 1906
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1907
    .local v0, option:Landroid/os/Bundle;
    const-string v1, "dmlock_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1908
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 1575
    monitor-enter p0

    .line 1576
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    monitor-exit p0

    .line 1596
    :goto_0
    return-void

    .line 1581
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1585
    :cond_1
    :try_start_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_2

    .line 1587
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1590
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->hide()V

    .line 1591
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1593
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1594
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1595
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleKeyguardDone(Z)V
    .locals 3
    .parameter "wakeup"

    .prologue
    .line 1446
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyguardDone, wakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1448
    if-eqz p1, :cond_0

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 1452
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1453
    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 3

    .prologue
    .line 1469
    monitor-enter p0

    .line 1470
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_1

    .line 1472
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1474
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1485
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1486
    return-void

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.internal.policy.impl.KeyguardViewMediator.DONE_DRAW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 2

    .prologue
    .line 1729
    monitor-enter p0

    .line 1730
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1732
    monitor-exit p0

    .line 1733
    return-void

    .line 1732
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 1740
    monitor-enter p0

    .line 1741
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 1743
    monitor-exit p0

    .line 1744
    return-void

    .line 1743
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReset(Landroid/os/Bundle;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 1703
    monitor-enter p0

    .line 1704
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reset(Landroid/os/Bundle;)V

    .line 1707
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1708
    monitor-exit p0

    .line 1709
    return-void

    .line 1708
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 929
    monitor-enter p0

    .line 930
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 931
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 932
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 933
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 935
    :cond_0
    monitor-exit p0

    .line 936
    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 4
    .parameter "options"

    .prologue
    .line 1533
    monitor-enter p0

    .line 1534
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow enter"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 1568
    :goto_0
    return-void

    .line 1537
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 1567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1539
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1541
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow mKeyguardViewManager Show exit"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1545
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1546
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1547
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1553
    :goto_1
    :try_start_3
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow query AlarmBoot before"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1556
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1565
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1566
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow exit"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    monitor-exit p0

    goto :goto_0

    .line 1558
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1550
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    .line 1716
    monitor-enter p0

    .line 1717
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->verifyUnlock()V

    .line 1719
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1720
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1721
    monitor-exit p0

    .line 1722
    return-void

    .line 1721
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeWhenReady(II)V
    .locals 3
    .parameter "keyCode"
    .parameter "wakeMSGId"

    .prologue
    .line 1677
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Before--synchronized (KeyguardViewMediator.this) wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    monitor-enter p0

    .line 1679
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1685
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1694
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    monitor-exit p0

    .line 1696
    return-void

    .line 1695
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1154
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1156
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1157
    return-void
.end method

.method private isAssistantAvailable()Z
    .locals 3

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeyguardEnabled()Z
    .locals 1

    .prologue
    .line 1831
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method public static isKeyguardNotShowing()Z
    .locals 3

    .prologue
    .line 1825
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mExternallyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeyguardShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 1836
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowingAndNotHiding()Z
    .locals 2

    .prologue
    .line 911
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimLockedOrMissing(IZ)Z
    .locals 4
    .parameter "SimId"
    .parameter "requireSim"

    .prologue
    const/4 v1, 0x0

    .line 1052
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1053
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 1055
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_4

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 1060
    .end local v0           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    return v1
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 777
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 784
    :cond_0
    return-void
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 1100
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1102
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 1110
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOnLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1112
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1113
    return-void
.end method

.method private playSounds(Z)V
    .locals 8
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1490
    const-string v0, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSounds mSuppressNextLockSound ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_1

    .line 1493
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1495
    if-eqz p1, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1501
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1502
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 1505
    .local v1, whichSound:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1507
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1509
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .line 1502
    .end local v1           #whichSound:I
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private resetStateLocked(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 1079
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1081
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1082
    return-void
.end method

.method private sendRemoveIPOWinBroadcast()V
    .locals 3

    .prologue
    .line 1754
    const-string v1, "KeyguardViewMediator"

    const-string v2, "sendRemoveIPOWinBroadcast ... "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    new-instance v0, Landroid/content/Intent;

    const-string v1, "alarm.boot.remove.ipowin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1756
    .local v0, in:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1757
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 3

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1460
    .local v0, currentUser:Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1462
    .end local v0           #currentUser:Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 1142
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1145
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1146
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1147
    return-void
.end method

.method private startAlarm()V
    .locals 3

    .prologue
    .line 1774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1775
    .local v0, in:Landroid/content/Intent;
    const-string v1, "isAlarmBoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1776
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1777
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 1522
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    :goto_1
    return-void

    .line 1522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1524
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 1089
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1091
    return-void
.end method

.method private wakeWhenReady(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 1123
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeWhenReady("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1131
    sget v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    .line 1132
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<wakeWhenReadyLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Before--Send Message WAKE_WHEN_READY sWakeMSGId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1134
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1135
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 1068
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->dismiss()V

    .line 1071
    :cond_0
    return-void
.end method

.method public dmCheckLocked()Z
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    return v0
.end method

.method public doKeyguardLocked()V
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 962
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    const/16 v2, 0xd

    .line 943
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 945
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 946
    return-void
.end method

.method public handleShowAssistant()V
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->showAssistant()V

    .line 1786
    return-void
.end method

.method public isAlarmUnlockScreen()Z
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isAlarmUnlockScreen()Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 1747
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 3

    .prologue
    .line 954
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInputRestricted: showing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needReshow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 896
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 903
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1282
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1283
    monitor-enter p0

    .line 1284
    const v3, 0x11170

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1285
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1287
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1288
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1290
    if-eqz p1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1294
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1298
    if-eqz p1, :cond_1

    .line 1301
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1305
    :cond_1
    monitor-exit p0

    .line 1306
    return-void

    :cond_2
    move v1, v2

    .line 1287
    goto :goto_0

    .line 1305
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 791
    monitor-enter p0

    .line 792
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 795
    :cond_0
    monitor-exit p0

    .line 796
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 802
    monitor-enter p0

    .line 803
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 804
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 806
    :cond_0
    monitor-exit p0

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 5
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 658
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>onScreenTurnedOff("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ---ScreenOff Before--synchronized (this)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    monitor-enter p0

    .line 660
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 661
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenTurnedOff("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ---ScreenOff mScreenOn = false; Before--boolean lockImmediately"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 668
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 671
    .local v1, lockImmediately:Z
    :cond_1
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenTurnedOff("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ---ScreenOff mScreenOn = false; After--boolean lockImmediately="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mExitSecureCallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v2, :cond_3

    .line 676
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenTurnedOff("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ---ScreenOff pending exit secure callback cancelled ---ScreenOff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 678
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 679
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v2, :cond_2

    .line 680
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 700
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<onScreenTurnedOff("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ---ScreenOff After--synchronized (this)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return-void

    .line 682
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_5

    .line 683
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    .line 684
    .local v0, isReady:Z
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on screen turned off, we should show keyguard immediately, because it doesn\'t destroyed, isReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    if-eqz v0, :cond_4

    .line 687
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.internal.policy.impl.KeyguardViewMediator.DONE_DRAW"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 690
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 691
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .line 700
    .end local v0           #isReady:Z
    .end local v1           #lockImmediately:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 692
    .restart local v1       #lockImmediately:Z
    :cond_5
    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    if-nez v1, :cond_7

    .line 694
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    goto :goto_0

    .line 695
    :cond_7
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 762
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>onScreenTurnedOn, ---ScreenOn seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seq will be change in synchronized Before--synchronized (this)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    monitor-enter p0

    .line 765
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 766
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 767
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    if-eqz p1, :cond_0

    .line 769
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 771
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 773
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<onScreenTurnedOn, ---ScreenOn seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return-void

    .line 771
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 616
    monitor-enter p0

    .line 617
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->resetLockoutAttemptDeadline()V

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    :cond_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "suppressing biometric unlock during boot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 641
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 645
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 649
    return-void

    .line 638
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 1254
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeKeyWhenKeyguardShowing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1260
    return-void
.end method

.method public onWakeMotionWhenKeyguardShowingTq()V
    .locals 2

    .prologue
    .line 1273
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onWakeMotionWhenKeyguardShowing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1279
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .parameter "newUserId"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1172
    return-void
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugflag"

    .prologue
    .line 1816
    return-void
.end method

.method public setHidden(Z)V
    .locals 7
    .parameter "isHidden"

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 918
    const-string v1, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHidden "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 920
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 922
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 923
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 919
    goto :goto_0

    :cond_1
    move v2, v3

    .line 921
    goto :goto_1
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 815
    monitor-enter p0

    .line 816
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 820
    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    .line 821
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_0

    .line 822
    const-string v1, "KeyguardViewMediator"

    const-string v2, "in process of verifyUnlock request, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    monitor-exit p0

    .line 864
    :goto_0
    return-void

    .line 829
    :cond_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 832
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 863
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 833
    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_1

    .line 835
    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 839
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_3

    .line 840
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 842
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 843
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_1

    .line 845
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 850
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 851
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 852
    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 855
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 860
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    const-string v1, "KeyguardViewMediator"

    const-string v2, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public showAssistant()V
    .locals 3

    .prologue
    .line 1780
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1781
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1782
    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 519
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 520
    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .parameter "holdMs"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 526
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 870
    monitor-enter p0

    .line 871
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 889
    :goto_0
    monitor-exit p0

    .line 890
    return-void

    .line 876
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    .line 880
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 882
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_2

    .line 884
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 886
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 887
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 516
    return-void
.end method
