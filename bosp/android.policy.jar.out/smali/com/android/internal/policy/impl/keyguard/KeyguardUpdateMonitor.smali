.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SIM_STATES:Z = false

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field private static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field protected static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_HOTSPOT_DATA:I = 0x141

.field private static final MSG_KEYGUARD_VISIBILITY_CHANGED:I = 0x138

.field private static final MSG_MULTITHEME_LOCKSREEN_ENABLE:I = 0x142

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_STATUSBAR_LOCKSREEN_ENABLE:I = 0x1f5

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_REMOVED:I = 0x137

.field private static final MSG_USER_SWITCHED:I = 0x136

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private mAlternateUnlockEnabled:Z

.field private mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClockReady:Z

.field private mClockVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsPasswordLock:Z

.field private mKeyguardIsVisible:Z

.field public mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

.field private mMultithemLockscreen:Z

.field private mPhoneState:I

.field private mRingMode:I

.field private mShowWhichKeywords:I

.field private mShowedVoicePrint:Z

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mStatusBarExpand:Z

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 365
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    .line 96
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 97
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 98
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowWhichKeywords:I

    .line 99
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    .line 100
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockReady:Z

    .line 109
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 125
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 126
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 132
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 136
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 191
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 368
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 371
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v3, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 374
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "statusbar_expand_lockscreen"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    .line 377
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 378
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v6, 0x64

    invoke-direct {v3, v4, v6, v5, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 379
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 382
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 386
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v3, "com.baidu.lockscreen.syncdone"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v3, "theme.lockscreen.action.apply_theme"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v3, "theme.lockscreen.action.reduce_theme"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v3, "com.baidu.lockscreen.action.reduce_theme_settings"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v3, "com.baidu.lockscreen.statusbar.expand"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v0, bootCompleteFilter:Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 408
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_1
    return-void

    .end local v0           #bootCompleteFilter:Landroid/content/IntentFilter;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_1
    move v3, v5

    .line 374
    goto/16 :goto_0

    .line 423
    .restart local v0       #bootCompleteFilter:Landroid/content/IntentFilter;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #string@lockscreen_carrier_default#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "context"

    .prologue
    .line 359
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 362
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private getMultithemLockscreen()Z
    .locals 4

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_lock_type"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 752
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 756
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 754
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 756
    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 771
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 777
    .end local v0           #spn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    .line 642
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 643
    .local v0, batteryUpdateInteresting:Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 644
    if-eqz v0, :cond_1

    .line 645
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 646
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 647
    .local v1, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 645
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    .end local v1           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method private handleCarrierInfoUpdate()V
    .locals 4

    .prologue
    .line 661
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 662
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 663
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 664
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 661
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 3

    .prologue
    .line 696
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 697
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 698
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 696
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .locals 4
    .parameter "showing"

    .prologue
    const/4 v2, 0x1

    .line 709
    if-ne p1, v2, :cond_1

    .line 710
    .local v2, isShowing:Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 711
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 712
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 713
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 711
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 709
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    .end local v2           #isShowing:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 717
    .restart local v1       #i:I
    .restart local v2       #isShowing:Z
    :cond_2
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 4
    .parameter "simArgs"

    .prologue
    .line 673
    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 680
    .local v2, state:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_1

    .line 681
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 682
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 683
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 684
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 682
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 3

    .prologue
    .line 629
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 631
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 629
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .parameter "old"
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 724
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 725
    .local v0, nowPluggedIn:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 726
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 731
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 744
    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    .line 726
    goto :goto_0

    .line 736
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 741
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_4
    move v3, v4

    .line 744
    goto :goto_1
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 479
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 913
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 923
    move-object v0, p0

    .line 924
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 817
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 818
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 819
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 821
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 822
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 823
    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 5

    .prologue
    .line 484
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 496
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 502
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 503
    .local v0, provisioned:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 504
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 505
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x134

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFailedUnlockAttempts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 876
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 877
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 878
    return-void
.end method

.method public getFailedUnlockAttempts()I
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    .line 897
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getShowWhichKeywords()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowWhichKeywords:I

    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleBootCompleted()V
    .locals 3

    .prologue
    .line 544
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 545
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 547
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 545
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    .prologue
    .line 515
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 516
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 517
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 515
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 521
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 4

    .prologue
    .line 577
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 578
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 579
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 577
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 585
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 586
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 588
    :cond_2
    return-void
.end method

.method public handleMultithemLockscreenEnalbe(Ljava/lang/Integer;)V
    .locals 8
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 433
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi-theme LockScreen: handleMultithemLockscreenEnalbe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 436
    invoke-static {}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setWallpaperChange()V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/LockScreenElement;->clearElement()V

    .line 440
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 442
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 443
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 444
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 447
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    const-wide/16 v3, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 450
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_lock_type"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 455
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 456
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 457
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_lock_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 461
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 462
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 463
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 464
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    invoke-static {v1, v2, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 467
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 468
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 469
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 470
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 471
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    invoke-static {v1, v2, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 595
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 602
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 603
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 604
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 605
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 602
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 597
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 599
    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 608
    .restart local v1       #i:I
    :cond_4
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 615
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 616
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 617
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 618
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 616
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public handleStatubarExpandEnalbe(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 430
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    .line 431
    return-void
.end method

.method protected handleUserRemoved(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 565
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 566
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 567
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserRemoved(I)V

    .line 565
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserSwitched(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .parameter "userId"
    .parameter "reply"

    .prologue
    .line 527
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 529
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitched(I)V

    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 535
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_1
    return-void

    .line 536
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public hasBootCompleted()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public holdPersistData(Lcom/baidu/themeanimation/element/LockScreenElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 974
    return-void
.end method

.method public isAlternateUnlockEnabled()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isKeyguardVisible()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    return v0
.end method

.method public isSimPinSecure()Z
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarExpandEnbale()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    return v0
.end method

.method public ismClockReady()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockReady:Z

    return v0
.end method

.method public ismIsPasswordLock()Z
    .locals 1

    .prologue
    .line 955
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    return v0
.end method

.method public ismMultithemLockscreen()Z
    .locals 1

    .prologue
    .line 963
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    return v0
.end method

.method public ismShowedVoicePrint()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    return v0
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 802
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 812
    :goto_1
    return-void

    .line 802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 811
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_1
.end method

.method public removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 788
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 787
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 792
    :cond_1
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 833
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 834
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 835
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 894
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 882
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 2

    .prologue
    .line 850
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    .line 851
    return-void
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .locals 3
    .parameter "showing"

    .prologue
    .line 827
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 828
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 829
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 830
    return-void

    .line 828
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlternateUnlockEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    .line 906
    return-void
.end method

.method public setShowWhichKeywords(I)V
    .locals 0
    .parameter "which"

    .prologue
    .line 931
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowWhichKeywords:I

    .line 932
    return-void
.end method

.method public setmClockReady(Z)V
    .locals 0
    .parameter "mClockReady"

    .prologue
    .line 943
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockReady:Z

    .line 944
    return-void
.end method

.method public setmIsPasswordLock(Z)V
    .locals 0
    .parameter "mIsPasswordLock"

    .prologue
    .line 959
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    .line 960
    return-void
.end method

.method public setmShowedVoicePrint(Z)V
    .locals 0
    .parameter "mShowedVoicePrint"

    .prologue
    .line 951
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    .line 952
    return-void
.end method
