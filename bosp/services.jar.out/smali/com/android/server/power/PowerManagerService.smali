.class public final Lcom/android/server/power/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;,
        Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;
    }
.end annotation


# static fields
.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x800

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SCREEN_ON_BLOCKER_RELEASED:I = 0x400

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final DREAM_BATTERY_LEVEL_DRAIN_CUTOFF:I = 0x5

.field private static final MAXIMUM_SCREEN_DIM_RATIO:F = 0.2f

.field private static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x2710

.field private static final MSG_CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x4

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_ON_BLOCKER_RELEASED:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final SCREEN_DIM_DURATION:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final WAKEFULNESS_ASLEEP:I = 0x0

.field private static final WAKEFULNESS_AWAKE:I = 0x1

.field private static final WAKEFULNESS_DREAMING:I = 0x3

.field private static final WAKEFULNESS_NAPPING:I = 0x2

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20


# instance fields
.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mBatteryLevel:I

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mDirty:I

.field private final mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

.field private final mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mDisplayReady:Z

.field private mDockState:I

.field private mDreamManager:Lcom/android/server/dreams/DreamManagerService;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mIsPowered:Z

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastSleepTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsService:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenOffTimeoutSetting:I

.field private final mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

.field private mSendGoToSleepFinishedNotificationWhenReady:Z

.field private mSendWakeUpFinishedNotificationWhenReady:Z

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakefulness:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 367
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v0}, Lcom/android/server/power/DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 304
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 336
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 341
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 346
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 352
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 355
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 1676
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 368
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    const-string v0, "PowerManagerService"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 370
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 371
    new-instance v0, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    .line 372
    new-instance v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 374
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 375
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    .line 378
    invoke-static {v3, v3}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 379
    return-void

    .line 375
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startWatchingForBootAnimationFinished()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenOnBlockerReleased()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkIfBootAnimationFinished()V

    return-void
.end method

.method static synthetic access$2200(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$2400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    return-object v0
.end method

.method static synthetic access$2800(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    return-void
.end method

.method static synthetic access$2900(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method static synthetic access$776(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    .locals 11
    .parameter "lock"
    .parameter "flags"
    .parameter "tag"
    .parameter "ws"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 590
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 598
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    .line 599
    .local v9, index:I
    if-ltz v9, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v0, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 601
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 604
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Landroid/os/WorkSource;II)V

    .line 605
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 618
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 619
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 620
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 621
    monitor-exit v10

    .line 622
    return-void

    .line 608
    .end local v0           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    new-instance v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    .restart local v0       #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 615
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    .end local v0           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v9           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 611
    .restart local v0       #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v9       #index:I
    :catch_0
    move-exception v8

    .line 612
    .local v8, ex:Landroid/os/RemoteException;
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wake lock is already dead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 2
    .parameter "wakeLock"

    .prologue
    .line 635
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 639
    :cond_0
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 6
    .parameter "wakeLock"

    .prologue
    .line 705
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 711
    :cond_0
    return-void
.end method

.method private canDreamLocked()Z
    .locals 1

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

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

.method private checkIfBootAnimationFinished()V
    .locals 4

    .prologue
    .line 1767
    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1779
    :goto_0
    return-void

    .line 1773
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1774
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_1

    .line 1775
    const-string v0, "PowerManagerService"

    const-string v2, "Boot animation finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBootCompletedLocked()V

    .line 1778
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .parameter "workSource"

    .prologue
    .line 2291
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1881
    new-instance v1, Lcom/android/server/power/PowerManagerService$3;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    .local v1, t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1889
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    :goto_0
    return-void

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .parameter "name"

    .prologue
    .line 2270
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 2271
    .local v0, suspendBlocker:Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2272
    return-object v0
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .parameter "lock"

    .prologue
    .line 752
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 753
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 754
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 758
    .end local v1           #i:I
    :goto_1
    return v1

    .line 753
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getDesiredScreenPowerStateLocked()I
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v0, :cond_0

    .line 1664
    const/4 v0, 0x0

    .line 1673
    :goto_0
    return v0

    .line 1667
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_2

    .line 1670
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1673
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 3
    .parameter "screenOffTimeout"

    .prologue
    .line 1371
    const/16 v0, 0x1b58

    int-to-float v1, p1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getScreenOffTimeoutLocked()I
    .locals 5

    .prologue
    .line 1360
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 1361
    .local v0, timeout:I
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1364
    :cond_0
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 1365
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1367
    :cond_1
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private goToSleepFromNative(JI)V
    .locals 0
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    .line 962
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JI)V

    .line 963
    return-void
.end method

.method private goToSleepInternal(JI)V
    .locals 2
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 967
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 970
    :cond_0
    monitor-exit v1

    .line 971
    return-void

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JI)Z
    .locals 8
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 978
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 1018
    :goto_0
    return v4

    .line 983
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 991
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep by user request..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 p3, 0x0

    .line 996
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 997
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v6, p3}, Lcom/android/server/power/Notifier;->onGoToSleepStarted(I)V

    .line 998
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    .line 1000
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 1001
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1002
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1005
    const/4 v2, 0x0

    .line 1006
    .local v2, numWakeLocksCleared:I
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1007
    .local v1, numWakeLocks:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 1008
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1009
    .local v3, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1007
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 985
    .end local v0           #i:I
    .end local v1           #numWakeLocks:I
    .end local v2           #numWakeLocksCleared:I
    .end local v3           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_0
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep due to device administration policy..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 988
    :pswitch_1
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep due to screen timeout..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1013
    .restart local v0       #i:I
    .restart local v1       #numWakeLocks:I
    .restart local v2       #numWakeLocksCleared:I
    .restart local v3       #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1017
    .end local v3           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    const/16 v5, 0xaa4

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_0

    .line 983
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1009
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    .prologue
    .line 1754
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1755
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1756
    return-void
.end method

.method private handleBootCompletedLocked()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1782
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1783
    .local v1, now:J
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 1784
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1785
    const/16 v5, 0x3e8

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1787
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1788
    return-void
.end method

.method private handleDreamFinishedLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1556
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1558
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    .line 1561
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1567
    :cond_1
    :goto_0
    return-void

    .line 1563
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 1564
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_0
.end method

.method private handleSandman()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1471
    const/4 v3, 0x0

    .line 1472
    .local v3, startDreaming:Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1473
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 1474
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v0

    .line 1480
    .local v0, canDream:Z
    if-eqz v0, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v6, :cond_0

    .line 1481
    const/4 v3, 0x1

    .line 1483
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    const/4 v2, 0x0

    .line 1489
    .local v2, isDreaming:Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v4, :cond_2

    .line 1490
    if-eqz v3, :cond_1

    .line 1491
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4}, Lcom/android/server/dreams/DreamManagerService;->startDream()V

    .line 1493
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4}, Lcom/android/server/dreams/DreamManagerService;->isDreaming()Z

    move-result v2

    .line 1498
    :cond_2
    const/4 v1, 0x0

    .line 1499
    .local v1, continueDreaming:Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1500
    if-eqz v2, :cond_3

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1501
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v6, :cond_6

    .line 1502
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1503
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1504
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 1505
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1506
    const/4 v1, 0x1

    .line 1524
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 1525
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleDreamFinishedLocked()V

    .line 1527
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1533
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v4, :cond_5

    .line 1534
    if-nez v1, :cond_5

    .line 1535
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4}, Lcom/android/server/dreams/DreamManagerService;->stopDream()V

    .line 1538
    :cond_5
    return-void

    .line 1483
    .end local v0           #canDream:Z
    .end local v1           #continueDreaming:Z
    .end local v2           #isDreaming:Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1507
    .restart local v0       #canDream:Z
    .restart local v1       #continueDreaming:Z
    .restart local v2       #isDreaming:Z
    :cond_6
    :try_start_3
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v7, :cond_3

    .line 1508
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    add-int/lit8 v6, v6, -0x5

    if-ge v4, v6, :cond_7

    .line 1514
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Battery level now: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1527
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1520
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleScreenOnBlockerReleased()V
    .locals 2

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1571
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1572
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1573
    monitor-exit v1

    .line 1574
    return-void

    .line 1573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 560
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 561
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1355
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1356
    monitor-exit v1

    .line 1357
    return-void

    .line 1356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 3
    .parameter "wakeLock"

    .prologue
    .line 685
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 691
    .local v0, index:I
    if-gez v0, :cond_0

    .line 692
    monitor-exit v2

    .line 702
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 696
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 698
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 699
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 700
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 701
    monitor-exit v2

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    .prologue
    .line 1429
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCpuNeededLocked()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isItBedTimeYetLocked()Z
    .locals 1

    .prologue
    .line 1421
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 2

    .prologue
    .line 1949
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .parameter "wakeLock"

    .prologue
    .line 625
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 631
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 629
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 625
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private isScreenOnInternal()Z
    .locals 2

    .prologue
    .line 1747
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1748
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1659
    const/high16 v0, -0x4080

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidBrightness(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1654
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 786
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 787
    sparse-switch p1, :sswitch_data_0

    .line 798
    :try_start_0
    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    .line 792
    :sswitch_0
    monitor-exit v2

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 795
    :sswitch_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v3}, Lcom/android/server/power/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 787
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2152
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReboot(Ljava/lang/String;)V

    .line 2153
    return-void
.end method

.method public static lowLevelShutdown()V
    .locals 0

    .prologue
    .line 2141
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeShutdown()V

    .line 2142
    return-void
.end method

.method private napInternal(J)V
    .locals 2
    .parameter "eventTime"

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1039
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1042
    :cond_0
    monitor-exit v1

    .line 1043
    return-void

    .line 1042
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private napNoUpdateLocked(J)Z
    .locals 3
    .parameter "eventTime"

    .prologue
    const/4 v0, 0x1

    .line 1050
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 1052
    :cond_0
    const/4 v0, 0x0

    .line 1059
    :goto_0
    return v0

    .line 1055
    :cond_1
    const-string v1, "PowerManagerService"

    const-string v2, "Nap time..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1058
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    goto :goto_0
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReboot(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetPowerState(ZZ)V
.end method

.method private static native nativeShutdown()V
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 6
    .parameter "wakeLock"

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 766
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 6
    .parameter "wakeLock"

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 773
    :cond_0
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 2

    .prologue
    .line 499
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 501
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x111001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 503
    const v1, 0x111003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 505
    const v1, 0x1110040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 507
    const v1, 0x1110042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 509
    const v1, 0x1110041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 511
    return-void
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 658
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 664
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 665
    .local v0, index:I
    if-gez v0, :cond_0

    .line 666
    monitor-exit v3

    .line 682
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 670
    .local v1, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 671
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 672
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 674
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 675
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 678
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 679
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 680
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 681
    monitor-exit v3

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1454
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_0

    .line 1455
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 1456
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1457
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1458
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1460
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendPendingNotificationsLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1112
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    if-eqz v0, :cond_0

    .line 1113
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    .line 1114
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakeUpFinished()V

    .line 1116
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    if-eqz v0, :cond_1

    .line 1117
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    .line 1118
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onGoToSleepFinished()V

    .line 1120
    :cond_1
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v2, 0x0

    .line 1970
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1971
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 1972
    monitor-exit v3

    .line 1979
    :goto_0
    return-void

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 1975
    .local v0, light:Lcom/android/server/LightsService$Light;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1975
    .end local v0           #light:Lcom/android/server/LightsService$Light;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0       #light:Lcom/android/server/LightsService$Light;
    :cond_1
    move v1, v2

    .line 1978
    goto :goto_1
.end method

.method private setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2
    .parameter "timeMs"

    .prologue
    .line 1941
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1942
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 1943
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1944
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1945
    monitor-exit v1

    .line 1946
    return-void

    .line 1945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 2013
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2014
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_0

    .line 2015
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 2016
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2017
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2019
    :cond_0
    monitor-exit v1

    .line 2020
    return-void

    .line 2019
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStayOnSettingInternal(I)V
    .locals 2
    .parameter "val"

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1923
    return-void
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .locals 2
    .parameter "adj"

    .prologue
    .line 2125
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2128
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2129
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 2130
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2131
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2133
    :cond_0
    monitor-exit v1

    .line 2134
    return-void

    .line 2133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2092
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_0

    .line 2093
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 2094
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2095
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2097
    :cond_0
    monitor-exit v1

    .line 2098
    return-void

    .line 2097
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 4
    .parameter "timeoutMillis"

    .prologue
    .line 2057
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2058
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 2059
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 2060
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2061
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2063
    :cond_0
    monitor-exit v1

    .line 2064
    return-void

    .line 2063
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .prologue
    .line 1702
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3
    .parameter "wasPowered"
    .parameter "oldPlugType"
    .parameter "dockedOnWirelessCharger"

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 1174
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v1, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return v0

    .line 1180
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    if-eq p2, v2, :cond_0

    .line 1187
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v1, v2, :cond_3

    if-eqz p3, :cond_0

    .line 1194
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1200
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 4
    .parameter "shutdown"
    .parameter "confirm"
    .parameter "reason"
    .parameter "wait"

    .prologue
    .line 1829
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 1830
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1833
    :cond_1
    new-instance v1, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;)V

    .line 1847
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1848
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1849
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1852
    if-eqz p4, :cond_2

    .line 1853
    monitor-enter v1

    .line 1856
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1857
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1860
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1862
    :cond_2
    return-void
.end method

.method private startWatchingForBootAnimationFinished()V
    .locals 2

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 1760
    return-void
.end method

.method private updateDisplayPowerStateLocked(I)V
    .locals 9
    .parameter "dirty"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1585
    and-int/lit16 v4, p1, 0x43f

    if-eqz v4, :cond_4

    .line 1588
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPowerStateLocked()I

    move-result v1

    .line 1589
    .local v1, newScreenState:I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eq v1, v4, :cond_1

    .line 1590
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v4, :cond_0

    .line 1593
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    .line 1596
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v1, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    .line 1597
    if-eqz v1, :cond_5

    move v7, v5

    :goto_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    move v4, v5

    :goto_1
    invoke-static {v7, v4}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 1602
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 1603
    .local v3, screenBrightness:I
    const/4 v2, 0x0

    .line 1604
    .local v2, screenAutoBrightnessAdjustment:F
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v4, v5, :cond_7

    move v0, v5

    .line 1606
    .local v0, autoBrightness:Z
    :goto_2
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1607
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 1608
    const/4 v0, 0x0

    .line 1614
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 1615
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 1616
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1618
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 1625
    :cond_3
    :goto_4
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1627
    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, -0x4080

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1629
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v3, v4, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 1630
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v2, v4, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 1632
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v0, v4, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    .line 1634
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    .line 1636
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;->isHeld()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    .line 1638
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v4, v5, v7}, Lcom/android/server/power/DisplayPowerController;->requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 1640
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1651
    .end local v0           #autoBrightness:Z
    .end local v1           #newScreenState:I
    .end local v2           #screenAutoBrightnessAdjustment:F
    .end local v3           #screenBrightness:I
    :cond_4
    return-void

    .restart local v1       #newScreenState:I
    :cond_5
    move v7, v6

    .line 1597
    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_1

    .restart local v2       #screenAutoBrightnessAdjustment:F
    .restart local v3       #screenBrightness:I
    :cond_7
    move v0, v6

    .line 1604
    goto :goto_2

    .line 1609
    .restart local v0       #autoBrightness:Z
    :cond_8
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1610
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto :goto_3

    .line 1611
    :cond_9
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1612
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto :goto_3

    .line 1620
    :cond_a
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1622
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto :goto_4
.end method

.method private updateDreamLocked(I)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 1440
    and-int/lit16 v0, p1, 0x3f7

    if-eqz v0, :cond_0

    .line 1449
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 1451
    :cond_0
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 10
    .parameter "dirty"

    .prologue
    const/4 v3, 0x0

    .line 1127
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_2

    .line 1128
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 1129
    .local v8, wasPowered:Z
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 1130
    .local v7, oldPlugType:I
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 1131
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getPlugType()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 1132
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 1142
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v8, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v7, v0, :cond_2

    .line 1143
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1146
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v0, v4, v5, v9}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v6

    .line 1154
    .local v6, dockedOnWirelessCharger:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1155
    .local v1, now:J
    invoke-direct {p0, v8, v7, v6}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 1159
    :cond_1
    const/16 v5, 0x3e8

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1164
    if-eqz v6, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    .line 1169
    .end local v1           #now:J
    .end local v6           #dockedOnWirelessCharger:Z
    .end local v7           #oldPlugType:I
    .end local v8           #wasPowered:Z
    :cond_2
    return-void
.end method

.method private updatePowerStateLocked()V
    .locals 5

    .prologue
    .line 1071
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v4, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 1077
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 1082
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1083
    .local v2, now:J
    const/4 v1, 0x0

    .line 1085
    .local v1, dirtyPhase2:I
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1086
    .local v0, dirtyPhase1:I
    or-int/2addr v1, v0

    .line 1087
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1089
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 1090
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 1091
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1097
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(I)V

    .line 1098
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)V

    .line 1101
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v4, :cond_3

    .line 1102
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 1108
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V

    goto :goto_0
.end method

.method private updateSettingsLocked()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x2

    .line 514
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 516
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v6, "screensaver_enabled"

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 520
    const-string v6, "screensaver_activate_on_sleep"

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 524
    const-string v6, "screensaver_activate_on_dock"

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 528
    const-string v3, "screen_off_timeout"

    const/16 v6, 0x3a98

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 531
    const-string v3, "stay_on_while_plugged_in"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 534
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 535
    .local v1, oldScreenBrightnessSetting:I
    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 538
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    if-eq v1, v3, :cond_0

    .line 539
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 542
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 544
    .local v0, oldScreenAutoBrightnessAdjustmentSetting:F
    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 547
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 548
    const/high16 v3, 0x7fc0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 551
    :cond_1
    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 555
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 556
    return-void

    .end local v0           #oldScreenAutoBrightnessAdjustmentSetting:F
    .end local v1           #oldScreenBrightnessSetting:I
    :cond_2
    move v3, v5

    .line 516
    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v3, v5

    .line 520
    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v5

    .line 524
    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_5
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .parameter "dirty"

    .prologue
    .line 1208
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_0

    .line 1209
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 1210
    .local v0, wasStayOn:Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1212
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 1217
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_0

    .line 1218
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1221
    .end local v0           #wasStayOn:Z
    :cond_0
    return-void

    .line 1214
    .restart local v0       #wasStayOn:Z
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0
.end method

.method private updateSuspendBlockerLocked()V
    .locals 2

    .prologue
    .line 1711
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isCpuNeededLocked()Z

    move-result v0

    .line 1712
    .local v0, wantCpu:Z
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eq v0, v1, :cond_0

    .line 1713
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 1714
    if-eqz v0, :cond_1

    .line 1718
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1726
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->release()V

    goto :goto_0
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 11
    .parameter "now"
    .parameter "dirty"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 1290
    and-int/lit8 v7, p3, 0x26

    if-eqz v7, :cond_3

    .line 1291
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v7, v6}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 1293
    const-wide/16 v1, 0x0

    .line 1294
    .local v1, nextTimeout:J
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v7, :cond_5

    .line 1295
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked()I

    move-result v4

    .line 1296
    .local v4, screenOffTimeout:I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 1298
    .local v3, screenDimDuration:I
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 1299
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 1300
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v9, v4

    add-long/2addr v7, v9

    int-to-long v9, v3

    sub-long v1, v7, v9

    .line 1302
    cmp-long v7, p1, v1

    if-gez v7, :cond_4

    .line 1303
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 1311
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v7, :cond_2

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    .line 1313
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v9, v4

    add-long v1, v7, v9

    .line 1314
    cmp-long v7, p1, v1

    if-gez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v7, :cond_2

    .line 1317
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v7, v5, :cond_1

    move v5, v6

    :cond_1
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 1322
    :cond_2
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v5, :cond_3

    .line 1323
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1324
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1325
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1338
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #nextTimeout:J
    .end local v3           #screenDimDuration:I
    .end local v4           #screenOffTimeout:I
    :cond_3
    :goto_1
    return-void

    .line 1305
    .restart local v1       #nextTimeout:J
    .restart local v3       #screenDimDuration:I
    .restart local v4       #screenOffTimeout:I
    :cond_4
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v9, v4

    add-long v1, v7, v9

    .line 1306
    cmp-long v7, p1, v1

    if-gez v7, :cond_0

    .line 1307
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_0

    .line 1328
    .end local v3           #screenDimDuration:I
    .end local v4           #screenOffTimeout:I
    :cond_5
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_1
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 6
    .parameter "dirty"

    .prologue
    const/4 v5, 0x1

    .line 1230
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_1

    .line 1231
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1233
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1234
    .local v1, numWakeLocks:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1235
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1236
    .local v2, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1234
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    :sswitch_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1241
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_0

    .line 1242
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xb

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1244
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_0

    .line 1245
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1250
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_0

    .line 1251
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1252
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_0

    .line 1253
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1258
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_0

    .line 1259
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1260
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_0

    .line 1261
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1266
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_0

    .line 1267
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x11

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1279
    .end local v0           #i:I
    .end local v1           #numWakeLocks:I
    .end local v2           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    return-void

    .line 1236
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 5
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 736
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 737
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 738
    .local v0, index:I
    if-gez v0, :cond_0

    .line 739
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock not active"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 748
    .end local v0           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 742
    .restart local v0       #index:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 743
    .local v1, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 744
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 745
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 746
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 748
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 5
    .parameter "dirty"

    .prologue
    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, changed:Z
    and-int/lit16 v3, p1, 0xa97

    if-eqz v3, :cond_0

    .line 1389
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1394
    .local v1, time:J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1395
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(J)Z

    move-result v0

    .line 1402
    .end local v1           #time:J
    :cond_0
    :goto_0
    return v0

    .line 1397
    .restart local v1       #time:J
    :cond_1
    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    goto :goto_0
.end method

.method private userActivityFromNative(JII)V
    .locals 6
    .parameter "eventTime"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 839
    const/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 840
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 2
    .parameter "eventTime"
    .parameter "event"
    .parameter "flags"
    .parameter "uid"

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 844
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 847
    :cond_0
    monitor-exit v1

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 4
    .parameter "eventTime"
    .parameter "event"
    .parameter "flags"
    .parameter "uid"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 857
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 878
    :goto_0
    return v0

    .line 862
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 864
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_2

    .line 865
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    .line 867
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 868
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_0

    .line 872
    :cond_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    .line 873
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 874
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 878
    goto :goto_0
.end method

.method private wakeUpFromNative(J)V
    .locals 0
    .parameter "eventTime"

    .prologue
    .line 899
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(J)V

    .line 900
    return-void
.end method

.method private wakeUpInternal(J)V
    .locals 2
    .parameter "eventTime"

    .prologue
    .line 903
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 904
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 907
    :cond_0
    monitor-exit v1

    .line 908
    return-void

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wakeUpNoUpdateLocked(J)Z
    .locals 7
    .parameter "eventTime"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 915
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v6, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 941
    :cond_0
    :goto_0
    return v3

    .line 920
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v0, :pswitch_data_0

    .line 935
    :goto_1
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 936
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 937
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 939
    const/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move v3, v6

    .line 941
    goto :goto_0

    .line 922
    :pswitch_1
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from sleep..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 924
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakeUpStarted()V

    .line 925
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    goto :goto_1

    .line 928
    :pswitch_2
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from dream..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 931
    :pswitch_3
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from nap..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 920
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static wakefulnessToString(I)Ljava/lang/String;
    .locals 1
    .parameter "wakefulness"

    .prologue
    .line 2276
    packed-switch p0, :pswitch_data_0

    .line 2286
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2278
    :pswitch_0
    const-string v0, "Asleep"

    goto :goto_0

    .line 2280
    :pswitch_1
    const-string v0, "Awake"

    goto :goto_0

    .line 2282
    :pswitch_2
    const-string v0, "Dreaming"

    goto :goto_0

    .line 2284
    :pswitch_3
    const-string v0, "Napping"

    goto :goto_0

    .line 2276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "flags"
    .parameter "tag"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 565
    if-nez p1, :cond_0

    .line 566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    invoke-static {p2, p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 579
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 580
    .local v6, pid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, ident:J
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 582
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    return-void

    .line 575
    .end local v5           #uid:I
    .end local v6           #pid:I
    .end local v7           #ident:J
    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    .line 584
    .restart local v5       #uid:I
    .restart local v6       #pid:I
    .restart local v7       #ident:J
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 1870
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1874
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1878
    return-void

    .line 1876
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2164
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 2166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2267
    :cond_0
    :goto_0
    return-void

    .line 2172
    :cond_1
    const-string v7, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2177
    :try_start_0
    const-string v7, "Power Manager State:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDirty=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakefulness="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsPowered="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPlugType="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDockState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mStayOn="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mProximityPositive="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBootCompleted="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSystemReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakeLockSummary=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUserActivitySummary=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSandmanScheduled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastWakeTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastSleepTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSendWakeUpFinishedNotificationWhenReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSendGoToSleepFinishedNotificationWhenReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivityTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDisplayReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2206
    const-string v7, "Settings and Configuration:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsSupportedConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsEnabledSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenOffTimeoutSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (enforced="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessModeSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked()I

    move-result v4

    .line 2233
    .local v4, screenOffTimeout:I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 2234
    .local v3, screenDimDuration:I
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen off timeout: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen dim duration: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wake Locks: size="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2241
    .local v6, wl:Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2258
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #screenDimDuration:I
    .end local v4           #screenOffTimeout:I
    .end local v6           #wl:Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2244
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #screenDimDuration:I
    .restart local v4       #screenOffTimeout:I
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suspend Blockers: size="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2246
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .line 2247
    .local v2, sb:Lcom/android/server/power/SuspendBlocker;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2250
    .end local v2           #sb:Lcom/android/server/power/SuspendBlocker;
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen On Blocker: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display Blanker: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    .line 2257
    .local v0, dpc:Lcom/android/server/power/DisplayPowerController;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 2258
    .local v5, wcd:Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2260
    if-eqz v0, :cond_4

    .line 2261
    invoke-virtual {v0, p2}, Lcom/android/server/power/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 2264
    :cond_4
    if-eqz v5, :cond_0

    .line 2265
    invoke-virtual {v5, p2}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public goToSleep(JI)V
    .locals 5
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    .line 946
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 947
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 950
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 954
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 958
    return-void

    .line 956
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V
    .locals 2
    .parameter "context"
    .parameter "ls"
    .parameter "am"
    .parameter "bs"
    .parameter "bss"
    .parameter "dm"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 389
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 390
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 391
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 392
    iput-object p6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 393
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 394
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 395
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 397
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->unblankAllDisplays()V

    .line 406
    return-void
.end method

.method public isScreenOn()Z
    .locals 3

    .prologue
    .line 1738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1740
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenOnInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1742
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 779
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 781
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 2158
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2159
    :try_start_0
    monitor-exit v1

    .line 2160
    return-void

    .line 2159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nap(J)V
    .locals 5
    .parameter "eventTime"

    .prologue
    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1024
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1027
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1031
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->napInternal(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    return-void

    .line 1033
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .locals 5
    .parameter "confirm"
    .parameter "reason"
    .parameter "wait"

    .prologue
    .line 1799
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1803
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1805
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1807
    return-void

    .line 1805
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 643
    if-nez p1, :cond_0

    .line 644
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 651
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    return-void

    .line 653
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAttentionLight(ZI)V
    .locals 5
    .parameter "on"
    .parameter "color"

    .prologue
    .line 1958
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1962
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1966
    return-void

    .line 1964
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    return-void
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 1932
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1934
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1936
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1938
    return-void

    .line 1936
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "policy"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 411
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 2002
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2006
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2010
    return-void

    .line 2008
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setStayOnSetting(I)V
    .locals 5
    .parameter "val"

    .prologue
    .line 1910
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1914
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1918
    return-void

    .line 1916
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 2114
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2118
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2120
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    return-void

    .line 2120
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 2080
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2084
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2086
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    return-void

    .line 2086
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 5
    .parameter "timeoutMillis"

    .prologue
    .line 2046
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2050
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2052
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2054
    return-void

    .line 2052
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shutdown(ZZ)V
    .locals 5
    .parameter "confirm"
    .parameter "wait"

    .prologue
    const/4 v4, 0x0

    .line 1817
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1821
    .local v0, ident:J
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1823
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1825
    return-void

    .line 1823
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    .locals 18
    .parameter "twilight"
    .parameter "dreamManager"

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 416
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 417
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 420
    .local v14, pm:Landroid/os/PowerManager;
    invoke-virtual {v14}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 421
    invoke-virtual {v14}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 422
    invoke-virtual {v14}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 424
    new-instance v16, Landroid/hardware/SystemSensorManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    .line 428
    .local v16, sensorManager:Landroid/hardware/SensorManager;
    new-instance v2, Lcom/android/server/power/Notifier;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v6, "PowerManagerService.Broadcasts"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 434
    new-instance v2, Lcom/android/server/power/DisplayPowerController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v7, p1

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v12}, Lcom/android/server/power/DisplayPowerController;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    .line 439
    new-instance v2, Lcom/android/server/power/WirelessChargerDetector;

    const-string v3, "PowerManagerService.WirelessChargerDetector"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 441
    new-instance v2, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 445
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    .local v13, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 449
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 453
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 454
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 458
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 459
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 462
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DockReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 468
    .local v15, resolver:Landroid/content/ContentResolver;
    const-string v2, "screensaver_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 471
    const-string v2, "screensaver_activate_on_sleep"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 474
    const-string v2, "screensaver_activate_on_dock"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 477
    const-string v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 480
    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 483
    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 486
    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v2, v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 495
    monitor-exit v17

    .line 496
    return-void

    .line 495
    .end local v13           #filter:Landroid/content/IntentFilter;
    .end local v14           #pm:Landroid/os/PowerManager;
    .end local v15           #resolver:Landroid/content/ContentResolver;
    .end local v16           #sensorManager:Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public timeSinceScreenWasLastOn()J
    .locals 5

    .prologue
    .line 1985
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1986
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_0

    .line 1987
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 1989
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_0

    .line 1990
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 5
    .parameter "lock"
    .parameter "ws"

    .prologue
    const/4 v4, 0x0

    .line 715
    if-nez p1, :cond_0

    .line 716
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 719
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 729
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    return-void

    .line 724
    .end local v0           #ident:J
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 731
    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public userActivity(JII)V
    .locals 12
    .parameter "eventTime"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 806
    .local v8, now:J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    const-wide/32 v10, 0x493e0

    add-long/2addr v2, v10

    cmp-long v0, v8, v2

    if-ltz v0, :cond_0

    .line 813
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 814
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER permission.  Please fix your app!   pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    monitor-exit v1

    .line 835
    :goto_0
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 824
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 825
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 829
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, ident:J
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move/from16 v4, p4

    .line 831
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 833
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public wakeUp(J)V
    .locals 5
    .parameter "eventTime"

    .prologue
    .line 883
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 884
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 887
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 891
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    return-void

    .line 893
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
