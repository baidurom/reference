.class public Lcom/android/server/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/LocalPowerManager;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$LockList;,
        Lcom/android/server/PowerManagerService$BrightnessState;,
        Lcom/android/server/PowerManagerService$TimeoutTask;,
        Lcom/android/server/PowerManagerService$PokeLock;,
        Lcom/android/server/PowerManagerService$WakeLock;,
        Lcom/android/server/PowerManagerService$SettingsObserver;,
        Lcom/android/server/PowerManagerService$DockReceiver;,
        Lcom/android/server/PowerManagerService$SyncKeyguard;,
        Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;,
        Lcom/android/server/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/PowerManagerService$SDHotPlugReceiver;,
        Lcom/android/server/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    }
.end annotation


# static fields
.field private static final ALL_BRIGHT:I = 0xf

.field private static final ANIM_SETTING_OFF:I = 0x10

.field private static final ANIM_SETTING_ON:I = 0x1

.field static final ANIM_STEPS:I = 0xf

.field static final AUTOBRIGHTNESS_ANIM_STEPS:I = 0x3c

.field private static final BATTERY_LOW_BIT:I = 0x10

.field private static final BUTTON_BRIGHT_BIT:I = 0x4

.field static final DEBUG_SCREEN_ON:Z = false

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final FEATURE_ALIGN_BKL_ENABLED:Z = true

.field private static final FEATURE_DISABLE_LS_ENABLED:Z = true

.field private static final IGNORE_PREVENT_SCREEN_ON_FOR_SET_SCREEN_STATE:Z = true

.field static final INITIAL_BUTTON_BRIGHTNESS:I = 0x0

.field static final INITIAL_KEYBOARD_BRIGHTNESS:I = 0x0

.field static final INITIAL_SCREEN_BRIGHTNESS:I = 0xff

.field private static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field private static final LIGHTS_MASK:I = 0xe

.field private static final LIGHT_SENSOR_DELAY:I = 0x4b0

.field private static final LIGHT_SENSOR_RATE:I = 0xf4240

.field private static final LOCK_MASK:I = 0x3f

.field private static final LOG_PARTIAL_WL:Z = false

.field private static final LOG_TOUCH_DOWNS:Z = true

.field private static final LONG_DIM_TIME:I = 0x1b58

.field private static final LONG_KEYLIGHT_DELAY:I = 0x1770

.field private static final MEDIUM_KEYLIGHT_DELAY:I = 0x3a98

.field static final PARTIAL_NAME:Ljava/lang/String; = "PowerManagerService"

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x3e8

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON_BIT:I = 0x1

.field private static final SHORT_KEYLIGHT_DELAY_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final WAKELOCK_DUMP_ENABLED:Z = true

.field private static final WAKELOCK_SKIPPED_TAG:[Ljava/lang/String; = null

.field private static final mDebugLightSensor:Z = true

.field private static final mDebugProximitySensor:Z = true

.field private static mShutdownConfig:Z = false

.field private static final mSpew:Z = true


# instance fields
.field private final MY_PID:I

.field private final MY_UID:I

.field inPowerOff:Z

.field private mActivityService:Landroid/app/IActivityManager;

.field mAnimateScreenLights:Z

.field private mAnimationSetting:I

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAutoBrightessEnabled:Z

.field private mAutoBrightnessLevels:[I

.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private final mBroadcastQueue:[I

.field private mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private final mBroadcastWhy:[I

.field private mButtonBacklightValues:[I

.field private mButtonBrightnessOverride:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mContext:Landroid/content/Context;

.field private mDimDelay:I

.field private mDimScreen:Z

.field private mDoDelayLightAnimation:Z

.field private mDoneBooting:Z

.field private mForceReenableScreenTask:Ljava/lang/Runnable;

.field private mHDMI:Lcom/mediatek/hdmi/HDMINative;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighestLightSensorValue:I

.field private volatile mInitComplete:Z

.field private mInitialized:Z

.field private mIsDocked:Z

.field private mIsLowBattery:Z

.field private mIsPowered:Z

.field private mIsWakeLockBGDbgModeRunning:Z

.field private mIsWakeLockSkippedByTag:Z

.field private mKeyboardBacklightValues:[I

.field private mKeyboardLight:Lcom/android/server/LightsService$Light;

.field private mKeyboardVisible:Z

.field private mKeylightDelay:I

.field private mLastEventTime:J

.field private mLastProximityEventTime:J

.field private mLastScreenOnTime:J

.field private mLastTouchDown:J

.field private mLcdBacklightValues:[I

.field private mLcdLight:Lcom/android/server/LightsService$Light;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorButtonBrightness:I

.field private mLightSensorEnabled:Z

.field private mLightSensorKeyboardBrightness:I

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field private mLightSensorScreenBrightness:I

.field private mLightSensorScreenBrightnessWait:I

.field private mLightSensorValue:F

.field private mLightSensorWarmupTime:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLocks:Lcom/android/server/PowerManagerService$LockList;

.field private mMaxBrightness:I

.field private mMaximumScreenOffTimeout:I

.field private mNextTimeout:J

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mOldBacklightValue:I

.field private mPartialCount:I

.field private volatile mPokeAwakeOnSet:Z

.field private final mPokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/PowerManagerService$PokeLock;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPokey:I

.field private volatile mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerState:I

.field private mPreparingForScreenOn:Z

.field private mPreventScreenOn:Z

.field private mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProxIgnoredBecauseScreenTurnedOff:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProximityPendingValue:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field private mProximityTask:Ljava/lang/Runnable;

.field private mProximityWakeLockCount:I

.field private final mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessOverride:I

.field private mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOffDelay:I

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mScreenOffIntent:Landroid/content/Intent;

.field private mScreenOffReason:I

.field mScreenOffStart:J

.field private mScreenOffThread:Landroid/os/HandlerThread;

.field private mScreenOffTime:J

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOnIntent:Landroid/content/Intent;

.field private mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field mScreenOnStart:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mShortKeylightDelay:I

.field private mShutdownFlag:Z

.field private mSkippedScreenOn:Z

.field private mStayOnConditions:I

.field private mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStillNeedSleepNotification:Z

.field private mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

.field private final mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

.field private mTotalTouchDownTime:J

.field private mTouchCycles:I

.field private mTvOut:Lcom/mediatek/tvOut/TvOut;

.field mUnplugTurnsOnScreen:Z

.field private mUseSoftwareAutoBrightness:Z

.field private mUserActivityAllowed:Z

.field private mUserState:I

.field private mWaitKeyguardDraw:Z

.field private mWakeLockBGDbgModeResult:Ljava/lang/String;

.field private mWakeLockState:I

.field private mWarningSpewThrottleCount:I

.field private mWarningSpewThrottleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    sput-boolean v2, Lcom/android/server/PowerManagerService;->mShutdownConfig:Z

    .line 3674
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ActivityManager-Launch"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AlarmManager"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeyInputQueue"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KEEP_SCREEN_ON_FLAG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SCREEN_FROZEN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sleep_broadcast"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Proximity Partial"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RILJ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "show keyguard"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "keyguard"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "keyguardWakeAndHandOff"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "VibratorService"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/PowerManagerService;->WAKELOCK_SKIPPED_TAG:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 9

    .prologue
    const/high16 v8, -0x4080

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 584
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 123
    const/16 v2, 0x1770

    iput v2, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 155
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 156
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->inPowerOff:Z

    .line 172
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 174
    iput v4, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    .line 175
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    .line 176
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    .line 177
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    .line 178
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    .line 179
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 180
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 186
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 187
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 188
    iput v4, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 189
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    .line 190
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 191
    iput v5, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    .line 194
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 199
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 202
    new-instance v2, Lcom/android/server/PowerManagerService$LockList;

    invoke-direct {v2, p0, v7}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    .line 216
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    .line 221
    new-instance v2, Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-direct {v2, p0, v7}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    .line 222
    new-instance v2, Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/PowerManagerService$BrightnessState;-><init>(Lcom/android/server/PowerManagerService;I)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    .line 225
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    .line 233
    iput v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 234
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 235
    iput v5, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 236
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 237
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 238
    iput v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 239
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 240
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    .line 241
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 242
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 243
    iput v5, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 244
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    .line 245
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 247
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 248
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 249
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 250
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    .line 254
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 255
    iput v5, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 267
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    .line 269
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 289
    new-instance v2, Lcom/android/server/PowerManagerService$SyncKeyguard;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$SyncKeyguard;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    .line 290
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    .line 301
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    .line 303
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    .line 305
    iput v4, p0, Lcom/android/server/PowerManagerService;->mOldBacklightValue:I

    .line 306
    new-instance v2, Lcom/mediatek/tvOut/TvOut;

    invoke-direct {v2}, Lcom/mediatek/tvOut/TvOut;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    .line 307
    new-instance v2, Lcom/mediatek/hdmi/HDMINative;

    invoke-direct {v2}, Lcom/mediatek/hdmi/HDMINative;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    .line 1584
    new-instance v2, Lcom/android/server/PowerManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$5;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 1599
    new-instance v2, Lcom/android/server/PowerManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$6;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    .line 1678
    new-instance v2, Lcom/android/server/PowerManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$7;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1689
    new-instance v2, Lcom/android/server/PowerManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$8;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1857
    new-instance v2, Lcom/android/server/PowerManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$9;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    .line 2794
    new-instance v2, Lcom/android/server/PowerManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$10;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    .line 2808
    new-instance v2, Lcom/android/server/PowerManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$11;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    .line 3560
    new-instance v2, Lcom/android/server/PowerManagerService$14;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$14;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 3604
    new-instance v2, Lcom/android/server/PowerManagerService$15;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$15;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 3672
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    .line 3673
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockSkippedByTag:Z

    .line 586
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 587
    .local v0, token:J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    .line 588
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    .line 589
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    const-wide/32 v2, 0x240c8400

    invoke-static {v2, v3}, Landroid/os/Power;->setLastUserActivityTimeout(J)I

    .line 595
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    iput v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 598
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 599
    return-void

    .line 175
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->dockStateChanged(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return p1
.end method

.method static synthetic access$3076(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/PowerManagerService;JJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceReenableScreen()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->clearLightSensorValue()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/PowerManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/PowerManagerService;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return v0
.end method

.method static synthetic access$7202(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return p1
.end method

.method static synthetic access$7300(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/PowerManagerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide v0
.end method

.method static synthetic access$7602(Lcom/android/server/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide p1
.end method

.method static synthetic access$7700(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/server/PowerManagerService;I[I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$8300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    return v0
.end method

.method static synthetic access$8400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v0

    return v0
.end method

.method private applyButtonState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 2593
    const/4 v0, -0x1

    .line 2594
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 2608
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2598
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_3

    .line 2599
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 2603
    :cond_2
    :goto_1
    if-lez v0, :cond_4

    .line 2604
    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 2600
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2605
    :cond_4
    if-nez v0, :cond_0

    .line 2606
    and-int/lit8 p1, p1, -0x5

    goto :goto_0
.end method

.method private applyKeyboardState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 2613
    const/4 v0, -0x1

    .line 2614
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 2630
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2618
    .restart local p1
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v1, :cond_3

    .line 2619
    const/4 v0, 0x0

    .line 2625
    :cond_2
    :goto_1
    if-lez v0, :cond_5

    .line 2626
    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 2620
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_4

    .line 2621
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    goto :goto_1

    .line 2622
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2627
    :cond_5
    if-nez v0, :cond_0

    .line 2628
    and-int/lit8 p1, p1, -0x9

    goto :goto_0
.end method

.method private batteryIsLow()Z
    .locals 2

    .prologue
    .line 2126
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimerLocked()V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1467
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1468
    return-void
.end method

.method private clearLightSensorValue()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1870
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 1871
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 1873
    const-string v0, "PowerManagerService"

    const-string v1, "clearLightSensorValue: mHighestLightSensorValue = -1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iput v2, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 1876
    :cond_0
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    .line 1877
    return-void
.end method

.method private disableProximityLockLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3463
    const-string v2, "PowerManagerService"

    const-string v3, "disableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 3467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3469
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3470
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3471
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3472
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 3474
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3478
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_1

    .line 3479
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3481
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProximityLockLocked mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v2, :cond_1

    .line 3485
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 3489
    .end local v0           #identity:J
    :cond_1
    return-void

    .line 3476
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dockStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2823
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2824
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 2825
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    if-eqz v1, :cond_0

    .line 2826
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 2828
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2830
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 2831
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2832
    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 2834
    .end local v0           #value:I
    :cond_1
    monitor-exit v2

    .line 2835
    return-void

    .line 2824
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2834
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dumpPowerState(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const-string v0, "KEYBOARD_BRIGHT_BIT "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "SCREEN_BRIGHT_BIT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SCREEN_ON_BIT "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string v0, "BATTERY_LOW_BIT "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method private dumpWakeLockLocked()V
    .locals 11

    .prologue
    .line 1373
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 1374
    .local v0, N:I
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wakelock list dump: mLocks.size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1376
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7, v2}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1377
    .local v6, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v7, v7, 0x3f

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v5

    .line 1378
    .local v5, type:Ljava/lang/String;
    const-string v1, ""

    .line 1379
    .local v1, activated:Ljava/lang/String;
    iget-wide v3, v6, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 1380
    .local v3, total_time:J
    iget-boolean v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v7, :cond_0

    .line 1381
    const-string v1, " activated"

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    sub-long/2addr v7, v9

    add-long/2addr v3, v7

    .line 1384
    :cond_0
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(flags="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", minState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " total="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1389
    .end local v1           #activated:Ljava/lang/String;
    .end local v3           #total_time:J
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_1
    return-void
.end method

.method private enableLightSensorLocked(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 3531
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLightSensorLocked enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAutoBrightessEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-nez v2, :cond_0

    .line 3535
    const/4 p1, 0x0

    .line 3537
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eq v2, p1, :cond_1

    .line 3538
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    .line 3541
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3542
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3547
    .local v0, identity:J
    if-eqz p1, :cond_2

    .line 3548
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    const v5, 0xf4240

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3555
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3558
    .end local v0           #identity:J
    :cond_1
    return-void

    .line 3551
    .restart local v0       #identity:J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3552
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3555
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 3446
    const-string v2, "PowerManagerService"

    const-string v3, "enableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    .line 3450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3452
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3454
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3456
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3459
    .end local v0           #identity:J
    :cond_0
    return-void

    .line 3456
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private forceReenableScreen()V
    .locals 2

    .prologue
    .line 1839
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-nez v0, :cond_0

    .line 1840
    const-string v0, "PowerManagerService"

    const-string v1, "forceReenableScreen: mPreventScreenOn is false, nothing to do"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :goto_0
    return-void

    .line 1852
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "App called preventScreenOn(true) but didn\'t promptly reenable the screen! Forcing the screen back on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_0
.end method

.method private forceUserActivityLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2666
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2668
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iput-boolean v3, v1, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2670
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2671
    .local v0, savedActivityAllowed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 2673
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2674
    return-void
.end method

.method private getAutoBrightnessValue(I[I)I
    .locals 4
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    .line 2781
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2782
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_1

    .line 2786
    :cond_0
    aget v2, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    :goto_1
    return v2

    .line 2781
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2787
    :catch_0
    move-exception v0

    .line 2789
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerManagerService"

    const-string v3, "getAutoBrightnessValue"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2790
    const/16 v2, 0xff

    goto :goto_1
.end method

.method private getDynamicWakeLockLocked(Lcom/android/server/PowerManagerService$WakeLock;Z)V
    .locals 4
    .parameter "wl"
    .parameter "isAcquire"

    .prologue
    .line 3732
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-nez v1, :cond_1

    .line 3746
    :cond_0
    :goto_0
    return-void

    .line 3735
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockSkippedByTag:Z

    if-eqz v1, :cond_2

    .line 3736
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/server/PowerManagerService;->WAKELOCK_SKIPPED_TAG:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3737
    iget-object v1, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    sget-object v2, Lcom/android/server/PowerManagerService;->WAKELOCK_SKIPPED_TAG:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3736
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3742
    .end local v0           #i:I
    :cond_2
    if-eqz p2, :cond_3

    .line 3743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAcquired: TAG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , FLAG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->getWakeLockFlagLocked(Lcom/android/server/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    goto :goto_0

    .line 3745
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nReleased: TAG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPreferredBrightness()I
    .locals 4

    .prologue
    .line 2577
    :try_start_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-ltz v2, :cond_0

    .line 2578
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 2588
    :goto_0
    return v2

    .line 2579
    :cond_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-nez v2, :cond_1

    .line 2581
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    goto :goto_0

    .line 2583
    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2586
    .local v0, brightness:I
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2587
    .end local v0           #brightness:I
    :catch_0
    move-exception v1

    .line 2588
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v2, 0xff

    goto :goto_0
.end method

.method private getWakeLockFlagLocked(Lcom/android/server/PowerManagerService$WakeLock;)Ljava/lang/String;
    .locals 8
    .parameter "wl"

    .prologue
    const/high16 v7, 0x2000

    const/high16 v6, 0x1000

    const/4 v5, 0x1

    .line 3686
    const-string v0, ""

    .line 3687
    .local v0, flag:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3689
    .local v2, isMultiFlag:Z
    if-nez p1, :cond_0

    move-object v1, v0

    .line 3727
    .end local v0           #flag:Ljava/lang/String;
    .local v1, flag:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3693
    .end local v1           #flag:Ljava/lang/String;
    .restart local v0       #flag:Ljava/lang/String;
    :cond_0
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 3694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PARTIAL_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3695
    const/4 v2, 0x1

    .line 3697
    :cond_1
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x1a

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_8

    .line 3698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_7

    const-string v3, "|"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FULL_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3700
    const/4 v2, 0x1

    .line 3706
    :cond_2
    :goto_2
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x6

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 3707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_a

    const-string v3, "|"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SCREEN_DIM_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3709
    const/4 v2, 0x1

    .line 3711
    :cond_3
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    .line 3712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_b

    const-string v3, "|"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3714
    const/4 v2, 0x1

    .line 3716
    :cond_4
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_5

    .line 3717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_c

    const-string v3, "|"

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACQUIRE_CAUSES_WAKEUP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3719
    const/4 v2, 0x1

    .line 3721
    :cond_5
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_6

    .line 3722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_d

    const-string v3, "|"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ON_AFTER_RELEASE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3724
    const/4 v2, 0x1

    :cond_6
    move-object v1, v0

    .line 3727
    .end local v0           #flag:Ljava/lang/String;
    .restart local v1       #flag:Ljava/lang/String;
    goto/16 :goto_0

    .line 3698
    .end local v1           #flag:Ljava/lang/String;
    .restart local v0       #flag:Ljava/lang/String;
    :cond_7
    const-string v3, ""

    goto/16 :goto_1

    .line 3701
    :cond_8
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0xa

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 3702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_9

    const-string v3, "|"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SCREEN_BRIGHT_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3704
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 3702
    :cond_9
    const-string v3, ""

    goto :goto_7

    .line 3707
    :cond_a
    const-string v3, ""

    goto/16 :goto_3

    .line 3712
    :cond_b
    const-string v3, ""

    goto/16 :goto_4

    .line 3717
    :cond_c
    const-string v3, ""

    goto/16 :goto_5

    .line 3722
    :cond_d
    const-string v3, ""

    goto :goto_6
.end method

.method private goToSleepLocked(JI)V
    .locals 11
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 2999
    iget-wide v5, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_5

    .line 3000
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3002
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3003
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 3004
    .local v0, N:I
    const/4 v2, 0x0

    .line 3005
    .local v2, numCleared:I
    const/4 v3, 0x0

    .line 3006
    .local v3, proxLock:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3007
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 3008
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v5}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3009
    iget v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v5, v5, 0x3f

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    const/4 v5, 0x4

    if-ne p3, v5, :cond_1

    .line 3011
    const/4 v3, 0x1

    .line 3006
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3013
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v5, :cond_2

    .line 3014
    iget-wide v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v4, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    sub-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 3015
    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    .line 3017
    :cond_2
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$WakeLock;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 3018
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3022
    .end local v4           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_3
    if-nez v3, :cond_4

    .line 3023
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 3025
    const-string v5, "PowerManagerService"

    const-string v6, "setting mProxIgnoredBecauseScreenTurnedOff"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    :cond_4
    const/16 v5, 0xaa4

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3029
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 3030
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3031
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, p3}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 3032
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 3034
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #numCleared:I
    .end local v3           #proxLock:Z
    :cond_5
    return-void
.end method

.method private isScreenLock(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    .line 854
    and-int/lit8 v0, p1, 0x3f

    .line 855
    .local v0, n:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenTurningOffLocked()Z
    .locals 1

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lightSensorChangedLocked(I)V
    .locals 7
    .parameter "value"

    .prologue
    .line 2839
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lightSensorChangedLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 2845
    const-string v3, "PowerManagerService"

    const-string v4, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    :cond_0
    :goto_0
    return-void

    .line 2852
    :cond_1
    iput p1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 2855
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 2856
    int-to-float v3, p1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2857
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_0

    .line 2861
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    if-eqz v3, :cond_5

    move v3, p1

    :goto_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-direct {p0, v3, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    .line 2864
    .local v2, lcdValue:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, p1, v3}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 2866
    .local v0, buttonValue:I
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v3, :cond_6

    .line 2867
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    invoke-direct {p0, p1, v3}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v1

    .line 2871
    .local v1, keyboardValue:I
    :goto_2
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 2872
    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 2873
    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 2876
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lcdValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buttonValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyboardValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-gez v3, :cond_2

    .line 2882
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-nez v3, :cond_2

    .line 2884
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    .line 2886
    const-string v3, "PowerManagerService"

    const-string v4, "Skip animation in DIM state"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_2
    :goto_3
    iget v3, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-gez v3, :cond_3

    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    .line 2902
    const-string v3, "PowerManagerService"

    const-string v4, "<<<<< FEATURE_ALIGN_BKL >>>>> BUTTON BKL Changes because of LS"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2906
    :cond_3
    iget v3, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v3, :cond_0

    :cond_4
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 2909
    const-string v3, "PowerManagerService"

    const-string v4, "<<<<< FEATURE_ALIGN_BKL >>>>> KEYBOARD BKL Changes because of LS"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto/16 :goto_0

    .line 2861
    .end local v0           #buttonValue:I
    .end local v1           #keyboardValue:I
    .end local v2           #lcdValue:I
    :cond_5
    iget v3, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    goto/16 :goto_1

    .line 2869
    .restart local v0       #buttonValue:I
    .restart local v2       #lcdValue:I
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #keyboardValue:I
    goto/16 :goto_2

    .line 2890
    :cond_7
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    .line 2892
    const-string v3, "PowerManagerService"

    const-string v4, "<<<<< FEATURE_ALIGN_BKL >>>>> LCD BKL Changes because of LS"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/16 v4, 0x3c

    const/16 v5, 0xff

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v6, v6, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v6, v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)V

    goto :goto_3
.end method

.method private static lockType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1237
    sparse-switch p0, :sswitch_data_0

    .line 1250
    const-string v0, "???                           "

    :goto_0
    return-object v0

    .line 1240
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK                "

    goto :goto_0

    .line 1242
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    goto :goto_0

    .line 1244
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK          "

    goto :goto_0

    .line 1246
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK             "

    goto :goto_0

    .line 1248
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_0

    .line 1237
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private native nativeInit()V
.end method

.method private native nativeSetPowerState(ZZ)V
.end method

.method private native nativeStartSurfaceFlingerAnimation(I)V
.end method

.method private proximityChangedLocked(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 3493
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximityChangedLocked, active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 3496
    const-string v0, "PowerManagerService"

    const-string v1, "Ignoring proximity change after sensor is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    :cond_0
    :goto_0
    return-void

    .line 3499
    :cond_1
    if-eqz p1, :cond_3

    .line 3501
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_2

    .line 3505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 3508
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    goto :goto_0

    .line 3513
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3515
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_4

    .line 3519
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 3522
    :cond_4
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_0

    .line 3524
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_0
.end method

.method private releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    .locals 9
    .parameter "lock"
    .parameter "flags"
    .parameter "death"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1094
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v1, p1}, Lcom/android/server/PowerManagerService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;

    move-result-object v0

    .line 1095
    .local v0, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v0, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v1, :cond_2

    .line 1100
    iget-wide v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 1104
    :cond_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1109
    iget v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v1, v1, 0x3f

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 1110
    iget v1, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1111
    iget v1, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v1, :cond_3

    .line 1112
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v1, :cond_4

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    .line 1116
    const-string v1, "PowerManagerService"

    const-string v2, "waiting for proximity sensor to go negative"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-interface {v1, v0, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1145
    iget-object v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1148
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-eqz v1, :cond_0

    .line 1149
    invoke-direct {p0, v0, v7}, Lcom/android/server/PowerManagerService;->getDynamicWakeLockLocked(Lcom/android/server/PowerManagerService$WakeLock;Z)V

    goto/16 :goto_0

    .line 1119
    :cond_4
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_1

    .line 1123
    :cond_5
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1125
    iget v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    iget-boolean v1, v1, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    if-nez v1, :cond_6

    .line 1127
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    iput-boolean v8, v1, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    .line 1129
    :cond_6
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 1132
    :cond_7
    iget v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_1

    .line 1135
    :cond_8
    iget v1, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v1, v1, 0x3f

    if-ne v1, v8, :cond_3

    .line 1136
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1137
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-nez v1, :cond_3

    .line 1139
    const-string v1, "PowerManagerService"

    invoke-static {v1}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private screenOffFinishedAnimatingLocked(I)I
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 2118
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2120
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2121
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2122
    .local v0, err:I
    return v0
.end method

.method private sendNotificationLocked(ZI)V
    .locals 8
    .parameter "on"
    .parameter "why"

    .prologue
    const/16 v7, 0xaa7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1506
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-nez v1, :cond_1

    .line 1582
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    if-nez p1, :cond_2

    .line 1523
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 1527
    :cond_2
    const/4 v0, 0x0

    .line 1528
    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v5, :cond_3

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1531
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_8

    move v1, v2

    :goto_2
    aput v1, v4, v0

    .line 1532
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v0

    .line 1541
    if-ne v0, v6, :cond_5

    .line 1544
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aget v1, v1, v3

    if-le v1, p2, :cond_4

    .line 1545
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v3

    .line 1547
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_9

    move v1, v2

    :goto_3
    aput v1, v4, v3

    .line 1548
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 1549
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v6

    .line 1550
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1551
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1552
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1553
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1554
    const/4 v0, 0x0

    .line 1556
    :cond_5
    if-ne v0, v2, :cond_6

    if-nez p1, :cond_6

    .line 1557
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v3

    .line 1558
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 1559
    const/4 v0, -0x1

    .line 1562
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1563
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1568
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->inPowerOff:Z

    if-nez v1, :cond_7

    .line 1569
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1573
    :cond_7
    if-ltz v0, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1579
    const/16 v1, 0xaa5

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1580
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 1531
    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 1547
    goto/16 :goto_3
.end method

.method private setLightBrightness(II)V
    .locals 4
    .parameter "mask"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2325
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_5

    move v0, v1

    .line 2328
    .local v0, brightnessMode:I
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    .line 2342
    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-lez v3, :cond_0

    .line 2343
    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le p2, v3, :cond_0

    .line 2344
    iget p2, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 2347
    :cond_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mOldBacklightValue:I

    if-nez v3, :cond_6

    .line 2348
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    if-nez v2, :cond_1

    .line 2349
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2351
    :cond_1
    if-lez p2, :cond_2

    .line 2353
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    invoke-virtual {v2, v1}, Lcom/mediatek/tvOut/TvOut;->tvoutPowerEnable(Z)Z

    .line 2355
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    invoke-virtual {v2, v1}, Lcom/mediatek/hdmi/HDMINative;->hdmiPowerEnable(Z)Z

    .line 2368
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/server/PowerManagerService;->mOldBacklightValue:I

    .line 2370
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    if-eqz v1, :cond_8

    .line 2394
    :cond_4
    :goto_2
    return-void

    .end local v0           #brightnessMode:I
    :cond_5
    move v0, v2

    .line 2325
    goto :goto_0

    .line 2358
    .restart local v0       #brightnessMode:I
    :cond_6
    if-nez p2, :cond_7

    .line 2360
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    invoke-virtual {v1, v2}, Lcom/mediatek/tvOut/TvOut;->tvoutPowerEnable(Z)Z

    .line 2362
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    invoke-virtual {v1, v2}, Lcom/mediatek/hdmi/HDMINative;->hdmiPowerEnable(Z)Z

    .line 2364
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    if-nez v1, :cond_2

    .line 2365
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto :goto_1

    .line 2372
    :cond_8
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_a

    .line 2373
    if-eqz p2, :cond_9

    .line 2381
    :cond_9
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2383
    :cond_a
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_4

    .line 2384
    if-eqz p2, :cond_b

    .line 2392
    :cond_b
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_2
.end method

.method private setPowerState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1940
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 1941
    return-void
.end method

.method private setPowerState(IZI)V
    .locals 15
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "reason"

    .prologue
    .line 1945
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v10

    .line 1949
    :try_start_0
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerState: mPowerState=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newState=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " noChangeLights="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    if-eqz p2, :cond_0

    .line 1956
    and-int/lit8 v9, p1, -0xf

    iget v11, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v11, v11, 0xe

    or-int p1, v9, v11

    .line 1958
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v9, :cond_1

    .line 1960
    and-int/lit8 p1, p1, -0x4

    .line 1963
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1964
    or-int/lit8 p1, p1, 0x10

    .line 1968
    :goto_0
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v9, :cond_3

    .line 1969
    monitor-exit v10

    .line 2106
    :goto_1
    return-void

    .line 1966
    :cond_2
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    .line 1972
    :cond_3
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-nez v9, :cond_4

    .line 1973
    or-int/lit8 p1, p1, 0xf

    .line 1976
    :cond_4
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9

    const/4 v6, 0x1

    .line 1977
    .local v6, oldScreenOn:Z
    :goto_2
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_a

    const/4 v5, 0x1

    .line 1980
    .local v5, newScreenOn:Z
    :goto_3
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerState: mPowerState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " noChangeLights="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const-string v11, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldKeyboardBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " newKeyboardBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const-string v11, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldScreenBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " newScreenBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const-string v11, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldButtonBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " newButtonBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldScreenOn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newScreenOn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const-string v11, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldBatteryLow="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " newBatteryLow="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    :goto_b
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-eq v9, v0, :cond_13

    const/4 v8, 0x1

    .line 1996
    .local v8, stateChanged:Z
    :goto_c
    if-eq v6, v5, :cond_1a

    .line 1997
    if-eqz v5, :cond_15

    .line 2002
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    if-eqz v9, :cond_5

    .line 2003
    const/4 v9, 0x0

    const/4 v11, 0x2

    invoke-direct {p0, v9, v11}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2011
    :cond_5
    const/4 v7, 0x1

    .line 2013
    .local v7, reallyTurnScreenOn:Z
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- turning screen on...  mPreventScreenOn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-eqz v9, :cond_6

    .line 2023
    :cond_6
    if-eqz v7, :cond_14

    .line 2024
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v2

    .line 2025
    .local v2, err:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .line 2027
    .local v3, identity:J
    :try_start_1
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v11

    invoke-interface {v9, v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2028
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2032
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2041
    .end local v3           #identity:J
    :goto_d
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2042
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2043
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2044
    const/16 v9, 0xaa8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget v13, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2046
    if-nez v2, :cond_8

    .line 2047
    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-direct {p0, v9, v11}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2052
    if-eqz v8, :cond_7

    .line 2053
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2055
    :cond_7
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2056
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    .line 2102
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_8
    :goto_e
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0xf

    and-int/lit8 v11, p1, 0xe

    or-int/2addr v9, v11

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2104
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 2105
    monitor-exit v10

    goto/16 :goto_1

    .end local v5           #newScreenOn:Z
    .end local v6           #oldScreenOn:Z
    .end local v8           #stateChanged:Z
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 1976
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1977
    .restart local v6       #oldScreenOn:Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1982
    .restart local v5       #newScreenOn:Z
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 1984
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 1986
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 1990
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 1994
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 2029
    .restart local v2       #err:I
    .restart local v3       #identity:J
    .restart local v7       #reallyTurnScreenOn:Z
    .restart local v8       #stateChanged:Z
    :catch_0
    move-exception v1

    .line 2030
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOn on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2032
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2035
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_14
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->clearLightSensorValue()V

    .line 2036
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    .line 2038
    const/4 v2, 0x0

    .restart local v2       #err:I
    goto/16 :goto_d

    .line 2060
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_15
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->inPowerOff:Z

    .line 2063
    if-eqz v8, :cond_16

    .line 2064
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2068
    :cond_16
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2069
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 2070
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 2071
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v3

    .line 2074
    .restart local v3       #identity:J
    :try_start_5
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2078
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2080
    :goto_f
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0x2

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2081
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2082
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v9, v9, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v9, :cond_19

    .line 2084
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isKeyguardEnabled()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 2086
    :cond_17
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->clearLightSensorValue()V

    .line 2087
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    .line 2089
    :cond_18
    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v9, v0}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2090
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    .line 2095
    :goto_10
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->inPowerOff:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_e

    .line 2075
    :catch_1
    move-exception v1

    .line 2076
    .restart local v1       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOff on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2078
    :try_start_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2092
    :cond_19
    const/4 v2, 0x0

    .line 2093
    .restart local v2       #err:I
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    goto :goto_10

    .line 2097
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_1a
    if-eqz v8, :cond_8

    .line 2099
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_e
.end method

.method private setScreenBrightnessMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3113
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<<<< setScreenBrightnessMode >>>>> mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3

    .line 3116
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 3117
    .local v0, enabled:Z
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eq v4, v0, :cond_0

    .line 3118
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    .line 3120
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 3122
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<<<< FEATURE_DISABLE_LS >>>> LCD Mode Changed: new_mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3125
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-nez v1, :cond_0

    .line 3130
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3131
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3132
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    .line 3136
    :cond_0
    monitor-exit v3

    .line 3137
    return-void

    .end local v0           #enabled:Z
    :cond_1
    move v0, v2

    .line 3116
    goto :goto_0

    .restart local v0       #enabled:Z
    :cond_2
    move v1, v2

    .line 3124
    goto :goto_1

    .line 3136
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScreenOffTimeoutsLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3145
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 3146
    iget v1, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3147
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3148
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3178
    :goto_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenOffTimeouts mKeylightDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenOffDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    return-void

    .line 3149
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 3150
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3151
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3152
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 3154
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 3155
    .local v0, totalDelay:I
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-le v0, v1, :cond_2

    .line 3156
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 3158
    :cond_2
    const/16 v1, 0x1770

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3159
    if-gez v0, :cond_3

    .line 3161
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3170
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x32c8

    if-lt v0, v1, :cond_5

    .line 3171
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    add-int/lit16 v1, v1, -0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3172
    const/16 v1, 0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 3162
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    if-ge v1, v0, :cond_4

    .line 3166
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_1

    .line 3168
    :cond_4
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_1

    .line 3174
    :cond_5
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto/16 :goto_0
.end method

.method private setScreenStateLocked(Z)I
    .locals 4
    .parameter "on"

    .prologue
    .line 1880
    const/4 v0, 0x0

    .line 1886
    .local v0, err:I
    if-eqz p1, :cond_5

    .line 1887
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_1

    .line 1900
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->forceValueLocked(I)V

    .line 1919
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/os/Power;->setScreenState(Z)I

    move-result v0

    .line 1921
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    if-nez v0, :cond_4

    .line 1923
    if-eqz p1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    .line 1924
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_4

    .line 1925
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    .line 1926
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 1927
    if-nez p1, :cond_4

    .line 1929
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1930
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1935
    :cond_4
    return v0

    .line 1904
    :cond_5
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->dumpWakeLockLocked()V

    goto :goto_0

    .line 1923
    :cond_6
    const-wide/16 v1, 0x0

    goto :goto_1
.end method

.method private setTimeoutLocked(JI)V
    .locals 6
    .parameter "now"
    .parameter "nextState"

    .prologue
    .line 1392
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 1393
    return-void
.end method

.method private setTimeoutLocked(JJI)V
    .locals 9
    .parameter "now"
    .parameter "originalTimeoutOverride"
    .parameter "nextState"

    .prologue
    .line 1399
    move-wide v0, p3

    .line 1400
    .local v0, timeoutOverride:J
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 1401
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1402
    const-wide/16 v2, 0x0

    .line 1403
    .local v2, when:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 1404
    packed-switch p5, :pswitch_data_0

    .line 1422
    :pswitch_0
    move-wide v2, p1

    .line 1448
    :goto_0
    :try_start_0
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTimeoutLocked now="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " timeoutOverride="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " nextState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " when="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1454
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iput p5, v4, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1455
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    sub-long v4, p3, v0

    :goto_1
    iput-wide v4, v7, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    .line 1458
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1459
    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    .line 1460
    monitor-exit v6

    .line 1462
    .end local v2           #when:J
    :cond_0
    return-void

    .line 1407
    .restart local v2       #when:J
    :pswitch_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1408
    goto :goto_0

    .line 1410
    :pswitch_2
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_1

    .line 1411
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1412
    goto :goto_0

    .line 1414
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDimDelay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " while trying to dim"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1418
    :try_start_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v7, v4

    add-long v2, p1, v7

    .line 1419
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1460
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1427
    :cond_2
    :try_start_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 1428
    add-long v2, p1, v0

    .line 1429
    const/4 p5, 0x0

    .line 1430
    goto/16 :goto_0

    .line 1432
    :cond_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1434
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_5

    .line 1435
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4

    .line 1436
    add-long v2, p1, v0

    .line 1437
    const/4 p5, 0x1

    .line 1438
    goto/16 :goto_0

    .line 1440
    :cond_4
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1443
    :cond_5
    add-long v2, p1, v0

    .line 1444
    const/4 p5, 0x3

    goto/16 :goto_0

    .line 1455
    :cond_6
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 1404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldDeferScreenOnLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2131
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    if-eqz v2, :cond_1

    .line 2150
    :cond_0
    :goto_0
    return v1

    .line 2142
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2143
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_0

    .line 2142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2150
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldLog(J)Z
    .locals 7
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2651
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2652
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 2653
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    .line 2654
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 2655
    monitor-exit v2

    .line 2660
    :goto_0
    return v0

    .line 2656
    :cond_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_1

    .line 2657
    iget v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 2658
    monitor-exit v2

    goto :goto_0

    .line 2662
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2660
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private updateLightsLocked(II)V
    .locals 20
    .parameter "newState"
    .parameter "forceState"

    .prologue
    .line 2154
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2158
    .local v10, oldState:I
    and-int/lit8 v17, v10, 0x1

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 2162
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->shouldDeferScreenOnLocked()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v17, :cond_1

    .line 2163
    and-int/lit8 p1, p1, -0x4

    .line 2167
    :cond_1
    and-int/lit8 v17, p1, 0x1

    if-eqz v17, :cond_2

    .line 2170
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyButtonState(I)I

    move-result p1

    .line 2171
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyKeyboardState(I)I

    move-result p1

    .line 2173
    :cond_2
    xor-int v14, p1, v10

    .line 2174
    .local v14, realDifference:I
    or-int v4, v14, p2

    .line 2175
    .local v4, difference:I
    if-nez v4, :cond_4

    .line 2322
    :cond_3
    :goto_0
    return-void

    .line 2179
    :cond_4
    const/4 v9, 0x0

    .line 2180
    .local v9, offMask:I
    const/4 v5, 0x0

    .line 2181
    .local v5, dimMask:I
    const/4 v11, 0x0

    .line 2183
    .local v11, onMask:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v12

    .line 2185
    .local v12, preferredBrightness:I
    and-int/lit8 v17, v4, 0x8

    if-eqz v17, :cond_5

    .line 2186
    and-int/lit8 v17, p1, 0x8

    if-nez v17, :cond_10

    .line 2187
    or-int/lit8 v9, v9, 0x8

    .line 2193
    :cond_5
    :goto_1
    and-int/lit8 v17, v4, 0x4

    if-eqz v17, :cond_6

    .line 2194
    and-int/lit8 v17, p1, 0x4

    if-nez v17, :cond_11

    .line 2195
    or-int/lit8 v9, v9, 0x4

    .line 2201
    :cond_6
    :goto_2
    and-int/lit8 v17, v4, 0x3

    if-eqz v17, :cond_b

    .line 2202
    const/4 v8, -0x1

    .line 2208
    .local v8, nominalCurrentValue:I
    and-int/lit8 v17, v14, 0x3

    if-eqz v17, :cond_7

    .line 2209
    and-int/lit8 v17, v10, 0x3

    packed-switch v17, :pswitch_data_0

    .line 2222
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v8, v0

    .line 2226
    :cond_7
    :goto_3
    move v3, v12

    .line 2227
    .local v3, brightness:I
    const/16 v16, 0xf

    .line 2228
    .local v16, steps:I
    and-int/lit8 v17, p1, 0x2

    if-nez v17, :cond_9

    .line 2232
    const/high16 v15, 0x3fc0

    .line 2233
    .local v15, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v12

    move/from16 v18, v0

    div-float v13, v17, v18

    .line 2234
    .local v13, ratio:F
    const/high16 v17, 0x3f80

    cmpl-float v17, v13, v17

    if-lez v17, :cond_8

    const/high16 v13, 0x3f80

    .line 2235
    :cond_8
    and-int/lit8 v17, p1, 0x1

    if-nez v17, :cond_13

    .line 2236
    and-int/lit8 v17, v10, 0x2

    if-eqz v17, :cond_12

    .line 2238
    const/16 v16, 0xf

    .line 2243
    :goto_4
    const/4 v3, 0x0

    .line 2263
    .end local v13           #ratio:F
    .end local v15           #scale:F
    :cond_9
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2265
    .local v6, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2269
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2272
    :goto_6
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "newState="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", realDifference="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "SCREEN_ON_BIT="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    and-int/lit8 v17, p1, 0x1

    and-int v17, v17, v14

    if-eqz v17, :cond_16

    .line 2274
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    .line 2277
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 2278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_a

    .line 2279
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 2280
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)V

    .line 2291
    .end local v3           #brightness:I
    .end local v6           #identity:J
    .end local v8           #nominalCurrentValue:I
    .end local v16           #steps:I
    :cond_b
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "offMask=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " dimMask=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " onMask=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " difference=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " realDifference=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " forceState=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    if-eqz v9, :cond_c

    .line 2301
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Setting brightess off: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2304
    :cond_c
    if-eqz v5, :cond_e

    .line 2305
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2306
    .restart local v3       #brightness:I
    and-int/lit8 v17, p1, 0x10

    if-eqz v17, :cond_d

    const/16 v17, 0xa

    move/from16 v0, v17

    if-le v3, v0, :cond_d

    .line 2308
    const/16 v3, 0xa

    .line 2310
    :cond_d
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Setting brightess dim "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2313
    .end local v3           #brightness:I
    :cond_e
    if-eqz v11, :cond_3

    .line 2314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v3

    .line 2315
    .restart local v3       #brightness:I
    and-int/lit8 v17, p1, 0x10

    if-eqz v17, :cond_f

    const/16 v17, 0xa

    move/from16 v0, v17

    if-le v3, v0, :cond_f

    .line 2317
    const/16 v3, 0xa

    .line 2319
    :cond_f
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Setting brightess on "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_0

    .line 2189
    .end local v3           #brightness:I
    :cond_10
    or-int/lit8 v11, v11, 0x8

    goto/16 :goto_1

    .line 2197
    :cond_11
    or-int/lit8 v11, v11, 0x4

    goto/16 :goto_2

    .line 2211
    .restart local v8       #nominalCurrentValue:I
    :pswitch_1
    move v8, v12

    .line 2212
    goto/16 :goto_3

    .line 2214
    :pswitch_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2215
    goto/16 :goto_3

    .line 2217
    :pswitch_3
    const/4 v8, 0x0

    .line 2218
    goto/16 :goto_3

    .line 2241
    .restart local v3       #brightness:I
    .restart local v13       #ratio:F
    .restart local v15       #scale:F
    .restart local v16       #steps:I
    :cond_12
    const/high16 v17, 0x4170

    mul-float v17, v17, v13

    const/high16 v18, 0x3fc0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_4

    .line 2245
    :cond_13
    and-int/lit8 v17, v10, 0x1

    if-eqz v17, :cond_15

    .line 2247
    const/high16 v17, 0x4170

    const/high16 v18, 0x3f80

    sub-float v18, v18, v13

    mul-float v17, v17, v18

    const/high16 v18, 0x3fc0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2252
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 2258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2260
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    goto/16 :goto_5

    .line 2250
    :cond_15
    const/high16 v17, 0x4170

    mul-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto :goto_8

    .line 2266
    .end local v13           #ratio:F
    .end local v15           #scale:F
    .restart local v6       #identity:J
    :catch_0
    move-exception v17

    .line 2269
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    :catchall_0
    move-exception v17

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    .line 2276
    :cond_16
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    goto/16 :goto_7

    .line 2209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNativePowerStateLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2109
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 2112
    return-void

    :cond_0
    move v0, v2

    .line 2109
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private updateSettingsValues()V
    .locals 3

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_keylight_delay_ms"

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 3194
    return-void
.end method

.method private updateWakeLockLocked()V
    .locals 2

    .prologue
    .line 842
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 845
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 850
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 848
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0
.end method

.method private userActivity(JJZIZ)V
    .locals 11
    .parameter "time"
    .parameter "timeoutOverride"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 2715
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    .line 2776
    :cond_0
    :goto_0
    return-void

    .line 2722
    :cond_1
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v10

    .line 2724
    :try_start_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userActivity mLastEventTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUserActivityAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUserState=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWakeLockState=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mProximitySensorActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mProximitySensorEnabed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeoutOverride="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2735
    const-string v1, "PowerManagerService"

    const-string v2, "ignoring user activity while turning off screen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    monitor-exit v10

    goto/16 :goto_0

    .line 2771
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2740
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v1, :cond_3

    .line 2741
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 2743
    :cond_3
    iget-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_4

    if-eqz p7, :cond_8

    .line 2744
    :cond_4
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 2745
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v1, :cond_6

    :cond_5
    if-eqz p7, :cond_8

    .line 2748
    :cond_6
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_7

    .line 2749
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xf

    :goto_1
    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 2755
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2756
    .local v9, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 2758
    .local v7, ident:J
    :try_start_2
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v0, p6

    invoke-interface {v1, v9, v0}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2762
    :try_start_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2765
    :goto_3
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 2766
    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    move/from16 v0, p5

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 2768
    const/4 v6, 0x3

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 2771
    .end local v7           #ident:J
    .end local v9           #uid:I
    :cond_8
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2773
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v1, :cond_0

    .line 2774
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto/16 :goto_0

    .line 2749
    :cond_9
    const/4 v1, 0x7

    goto :goto_1

    .line 2752
    :cond_a
    :try_start_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto :goto_2

    .line 2759
    .restart local v7       #ident:J
    .restart local v9       #uid:I
    :catch_0
    move-exception v1

    .line 2762
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 10
    .parameter "flags"
    .parameter "lock"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 871
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 872
    .local v4, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_0
    if-eqz p4, :cond_1

    .line 876
    invoke-virtual {p0, v3, v4}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 878
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 880
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 881
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V

    .line 882
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    return-void

    .line 882
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 884
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V
    .locals 13
    .parameter "flags"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 927
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWakeLock flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 931
    const/16 p6, 0x0

    .line 934
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, p2}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v9

    .line 939
    .local v9, index:I
    if-gez v9, :cond_a

    .line 940
    new-instance v1, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 941
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v2, v2, 0x3f

    sparse-switch v2, :sswitch_data_0

    .line 962
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad wakelock type for lock \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_1
    :goto_0
    return-void

    .line 944
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_2

    .line 947
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xf

    :goto_1
    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    .line 966
    :goto_2
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v1}, Lcom/android/server/PowerManagerService$LockList;->addLock(Lcom/android/server/PowerManagerService$WakeLock;)V

    .line 967
    if-eqz p6, :cond_3

    .line 968
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 970
    :cond_3
    const/4 v10, 0x1

    .line 971
    .local v10, newlock:Z
    const/4 v8, 0x0

    .line 972
    .local v8, diffsource:Z
    const/4 v12, 0x0

    .line 973
    .local v12, oldsource:Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    .line 994
    :cond_4
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 999
    and-int/lit8 v2, p1, 0x3f

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    .line 1000
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1001
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1002
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->enableProximityLockLocked()V

    .line 1046
    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    .line 1049
    invoke-virtual {p0, v1, v12}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1051
    :cond_6
    if-nez v10, :cond_7

    if-eqz v8, :cond_8

    .line 1052
    :cond_7
    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1055
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-eqz v2, :cond_1

    .line 1056
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->getDynamicWakeLockLocked(Lcom/android/server/PowerManagerService$WakeLock;Z)V

    goto :goto_0

    .line 947
    .end local v8           #diffsource:Z
    .end local v10           #newlock:Z
    .end local v12           #oldsource:Landroid/os/WorkSource;
    :cond_9
    const/4 v2, 0x7

    goto :goto_1

    .line 951
    :sswitch_2
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_2

    .line 954
    :sswitch_3
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_2

    .line 975
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_a
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v9}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 976
    .restart local v1       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    const/4 v10, 0x0

    .line 977
    .restart local v10       #newlock:Z
    iget-object v12, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 978
    .restart local v12       #oldsource:Landroid/os/WorkSource;
    if-eqz v12, :cond_c

    .line 979
    if-nez p6, :cond_b

    .line 980
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 981
    const/4 v8, 0x1

    .line 990
    .restart local v8       #diffsource:Z
    :goto_5
    if-eqz v8, :cond_4

    .line 991
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    goto :goto_3

    .line 983
    .end local v8           #diffsource:Z
    :cond_b
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v8

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 985
    .end local v8           #diffsource:Z
    :cond_c
    if-eqz p6, :cond_d

    .line 986
    const/4 v8, 0x1

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 988
    .end local v8           #diffsource:Z
    :cond_d
    const/4 v8, 0x0

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1005
    :cond_e
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 1006
    iget v11, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1007
    .local v11, oldWakeLockState:I
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1011
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_f

    .line 1013
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 1014
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    .line 1018
    :cond_f
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wakeup here mUserState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " previous wakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    .end local v11           #oldWakeLockState:I
    :goto_6
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto/16 :goto_4

    .line 1026
    :cond_10
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "here mUserState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLocks.gatherState()=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    goto :goto_6

    .line 1036
    :cond_11
    and-int/lit8 v2, p1, 0x3f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1037
    if-eqz v10, :cond_12

    .line 1038
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1039
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1043
    :cond_12
    const/4 v2, 0x1

    const-string v3, "PowerManagerService"

    invoke-static {v2, v3}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 941
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method bootCompleted()V
    .locals 7

    .prologue
    .line 3338
    const-string v0, "PowerManagerService"

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 3340
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 3341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3342
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3343
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 3345
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    .line 3346
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3347
    monitor-exit v6

    .line 3348
    return-void

    .line 3347
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearUserActivityTimeout(JJ)V
    .locals 8
    .parameter "now"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 2707
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserActivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms from now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, v5

    move v7, v5

    .line 2709
    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2710
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 2985
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    new-instance v1, Lcom/android/server/PowerManagerService$13;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/PowerManagerService$13;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    .local v1, t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2991
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2995
    :goto_0
    return-void

    .line 2992
    :catch_0
    move-exception v0

    .line 2993
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public debugWakeLock()Ljava/lang/String;
    .locals 12

    .prologue
    .line 3752
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 3756
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 3757
    .local v0, N:I
    const/4 v5, 0x0

    .line 3758
    .local v5, wl:Lcom/android/server/PowerManagerService$WakeLock;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeLock List Size = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3759
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3760
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    check-cast v5, Lcom/android/server/PowerManagerService$WakeLock;

    .line 3761
    .restart local v5       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v5, :cond_0

    .line 3762
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\nNo."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": get null pointer"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3759
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3765
    :cond_0
    iget-wide v3, v5, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 3766
    .local v3, total_time:J
    iget-boolean v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v6, :cond_1

    .line 3767
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v5, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    sub-long/2addr v8, v10

    add-long/2addr v3, v8

    .line 3769
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\nNo."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": TAG = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v5, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , FLAG = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/android/server/PowerManagerService;->getWakeLockFlagLocked(Lcom/android/server/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3771
    .end local v3           #total_time:J
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3773
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "debugWakeLock in ForeGround Mode, result String="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    return-object v2

    .line 3771
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #result:Ljava/lang/String;
    .end local v5           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public debugWakeLockUnderBG(ZZ)Ljava/lang/String;
    .locals 3
    .parameter "isStartBgMode"
    .parameter "isSkipByTag"

    .prologue
    .line 3781
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3786
    if-eqz p1, :cond_1

    .line 3787
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-nez v0, :cond_0

    .line 3788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    .line 3790
    iput-boolean p2, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockSkippedByTag:Z

    .line 3791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->debugWakeLock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    .line 3792
    const-string v0, "BackGround Mode Starts now."

    monitor-exit v1

    .line 3804
    :goto_0
    return-object v0

    .line 3795
    :cond_0
    const-string v0, "BackGround Mode Starts already!"

    monitor-exit v1

    goto :goto_0

    .line 3807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3799
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-eqz v0, :cond_2

    .line 3800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    .line 3801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->debugWakeLock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    .line 3802
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 3804
    :cond_2
    const-string v0, "BackGround Mode Stops already."

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_0

    .line 1269
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    :goto_0
    return-void

    .line 1275
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1277
    .local v7, now:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v15

    .line 1278
    :try_start_0
    const-string v14, "Power Manager State:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mIsPowered="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mPowerState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mScreenOffTime="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ms"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPartialCount="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mWakeLockState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mUserState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPowerState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLocks.gather="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mNextTimeout="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " now="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v7

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "s from now"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mDimScreen="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mStayOnConditions="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mPreparingForScreenOn="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mSkippedScreenOn="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mScreenOffReason="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mUserState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mBroadcastQueue={"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mBroadcastWhy={"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPokey="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mPokeAwakeonSet="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mKeyboardVisible="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mUserActivityAllowed="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mKeylightDelay="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mDimDelay="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mScreenOffDelay="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPreventScreenOn="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "  mScreenBrightnessOverride="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "  mButtonBrightnessOverride="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mScreenOffTimeoutSetting="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMaximumScreenOffTimeout="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLastScreenOnTime="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mBroadcastWakeLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mStayOnWhilePluggedInScreenDimLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mStayOnWhilePluggedInPartialLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPreventScreenOnPartialLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximityPartialLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximityWakeLockCount="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximitySensorEnabled="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximitySensorActive="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximityPendingValue="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLastProximityEventTime="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLightSensorEnabled="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLightSensorValue="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorPendingValue="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLightSensorPendingDecrease="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorPendingIncrease="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLightSensorScreenBrightness="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorScreenBrightnessWait="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorButtonBrightness="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorKeyboardBrightness="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mUseSoftwareAutoBrightness="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mAutoBrightessEnabled="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const-string v16, "  mScreenBrightness: "

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/PowerManagerService$BrightnessState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v14}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v2

    .line 1335
    .local v2, N:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1336
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mLocks.size="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 1338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v14, v5}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1339
    .local v13, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v14, v13, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v14, v14, 0x3f

    invoke-static {v14}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v12

    .line 1340
    .local v12, type:Ljava/lang/String;
    const-string v3, ""

    .line 1341
    .local v3, acquireCausesWakeup:Ljava/lang/String;
    iget v14, v13, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v16, 0x1000

    and-int v14, v14, v16

    if-eqz v14, :cond_1

    .line 1342
    const-string v3, "ACQUIRE_CAUSES_WAKEUP "

    .line 1344
    :cond_1
    const-string v4, ""

    .line 1345
    .local v4, activated:Ljava/lang/String;
    iget-wide v10, v13, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 1346
    .local v10, total_time:J
    iget-boolean v14, v13, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v14, :cond_2

    .line 1347
    const-string v4, " activated"

    .line 1348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    iget-wide v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    add-long v10, v10, v16

    .line 1350
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " \'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " (minState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ", uid="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ", pid="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " total="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "ms)"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1355
    .end local v3           #acquireCausesWakeup:Ljava/lang/String;
    .end local v4           #activated:Ljava/lang/String;
    .end local v10           #total_time:J
    .end local v12           #type:Ljava/lang/String;
    .end local v13           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1356
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mPokeLocks.size="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1358
    .local v9, p:Lcom/android/server/PowerManagerService$PokeLock;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    poke lock \'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v9, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\':"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_4

    const-string v14, " POKE_LOCK_IGNORE_TOUCH_EVENTS"

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_5

    const-string v14, " POKE_LOCK_SHORT_TIMEOUT"

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_6

    const-string v14, " POKE_LOCK_MEDIUM_TIMEOUT"

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1368
    .end local v2           #N:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1358
    .restart local v2       #N:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_4
    :try_start_1
    const-string v14, ""

    goto :goto_3

    :cond_5
    const-string v14, ""

    goto :goto_4

    :cond_6
    const-string v14, ""

    goto :goto_5

    .line 1367
    .end local v9           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1368
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableUserActivity(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 3100
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUserActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3103
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3104
    if-nez p1, :cond_0

    .line 3106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 3108
    :cond_0
    monitor-exit v1

    .line 3109
    return-void

    .line 3108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableUserActivityForce(ZZ)V
    .locals 4
    .parameter "enabled"
    .parameter "force"

    .prologue
    .line 3087
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUserActivityForce enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3089
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3090
    if-nez p1, :cond_0

    .line 3092
    if-eqz p2, :cond_0

    .line 3093
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 3095
    :cond_0
    monitor-exit v1

    .line 3096
    return-void

    .line 3095
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 862
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method getPolicyLocked()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 3273
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-nez v0, :cond_1

    .line 3275
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3276
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3280
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 3356
    const/16 v0, 0x1f

    .line 3360
    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 3361
    or-int/lit8 v0, v0, 0x20

    .line 3364
    :cond_0
    return v0
.end method

.method public goToSleep(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 2923
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isKeyguardNotShowing()Z

    move-result v1

    .line 2924
    .local v1, isKeyguardNotShowing:Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2925
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2926
    const-string v2, "PowerManagerService"

    const-string v3, "reset mSyncKeyguard in goToSleep()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    .line 2929
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/PowerManagerService;->goToSleepWithReason(JI)V

    .line 2930
    return-void
.end method

.method public goToSleepWithReason(JI)V
    .locals 3
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2940
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 2941
    monitor-exit v1

    .line 2942
    return-void

    .line 2941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
    .locals 3
    .parameter "context"
    .parameter "lights"
    .parameter "activity"
    .parameter "battery"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 605
    iput-object p2, p0, Lcom/android/server/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 606
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    .line 607
    iput-object p3, p0, Lcom/android/server/PowerManagerService;->mActivityService:Landroid/app/IActivityManager;

    .line 608
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 609
    iput-object p4, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 611
    invoke-virtual {p2, v2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    .line 612
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 613
    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    .line 614
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 616
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 617
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 618
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 619
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 622
    new-instance v0, Lcom/android/server/PowerManagerService$1;

    const-string v1, "PowerManagerService.mScreenOffThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$1;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    .line 632
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 634
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 635
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    .line 637
    :try_start_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 642
    :cond_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 644
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 645
    new-instance v0, Lcom/android/server/PowerManagerService$2;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$2;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 652
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 654
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 655
    :goto_1
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_1

    .line 657
    :try_start_6
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 658
    :catch_1
    move-exception v0

    goto :goto_1

    .line 642
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 662
    :cond_1
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 664
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 665
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 666
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 669
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 671
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 672
    return-void

    .line 662
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 671
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0
.end method

.method initInThread()V
    .locals 13

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 675
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 677
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 679
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "sleep_broadcast"

    invoke-direct {v1, p0, v12, v3, v12}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 681
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Screen Dim"

    invoke-direct {v1, p0, v4, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 683
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Partial"

    invoke-direct {v1, p0, v12, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 685
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "PreventScreenOn Partial"

    invoke-direct {v1, p0, v12, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 687
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "Proximity Partial"

    invoke-direct {v1, p0, v12, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 690
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    .line 691
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    .line 693
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 695
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 697
    .local v7, resources:Landroid/content/res/Resources;
    const v1, #bool@config_animateScreenLights#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 700
    const v1, #bool@config_unplugTurnsOnScreen#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    .line 703
    const v1, #integer@config_screenBrightnessDim#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 707
    const v1, #bool@config_automatic_brightness_available#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 709
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_0

    .line 710
    const v1, #array@config_autoBrightnessLevels#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 712
    const v1, #array@config_autoBrightnessLcdBacklightValues#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 714
    const v1, #array@config_autoBrightnessButtonBacklightValues#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 716
    const v1, #array@config_autoBrightnessKeyboardBacklightValues#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 718
    const v1, #integer@config_lightSensorWarmupTime#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 723
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "stay_on_while_plugged_in"

    aput-object v5, v4, v11

    const-string v5, "screen_off_timeout"

    aput-object v5, v4, v12

    const/4 v5, 0x2

    const-string v11, "dim_screen"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const-string v11, "screen_brightness_mode"

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string v11, "window_animation_scale"

    aput-object v11, v4, v5

    const/4 v5, 0x5

    const-string v11, "transition_animation_scale"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 733
    .local v9, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v9, v3, v12, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 734
    new-instance v10, Lcom/android/server/PowerManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 735
    .local v10, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 738
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v10, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 741
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 742
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 744
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 745
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 747
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 748
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$DockReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 751
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 752
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    const-string v4, "com.android.internal.policy.impl.KeyguardViewMediator.DONE_DRAW"

    invoke-virtual {v1, v3, v6, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 756
    new-instance v8, Lcom/android/server/PowerManagerService$SDHotPlugReceiver;

    invoke-direct {v8, p0, v2}, Lcom/android/server/PowerManagerService$SDHotPlugReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 757
    .local v8, sdReceiver:Lcom/android/server/PowerManagerService$SDHotPlugReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 758
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SD_INSERTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 759
    const-string v1, "file"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 762
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 763
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 765
    const-string v1, "file"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 784
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/PowerManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/PowerManagerService$4;-><init>(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v12, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 791
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    .line 793
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 794
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 795
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 796
    monitor-exit v2

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isScreenBright()Z
    .locals 3

    .prologue
    .line 2641
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2642
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 2635
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2636
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStayAwake()Z
    .locals 2

    .prologue
    .line 3078
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3079
    const/4 v0, 0x1

    .line 3080
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logPointerDownEvent()V
    .locals 4

    .prologue
    .line 1709
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1711
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 1714
    :cond_0
    return-void
.end method

.method logPointerUpEvent()V
    .locals 6

    .prologue
    .line 1701
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 1702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1704
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 3352
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 3353
    return-void

    .line 3352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 889
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 892
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 893
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 904
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 896
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v2

    .line 901
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 907
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 908
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 910
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 911
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 914
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 916
    :catch_0
    move-exception v2

    .line 919
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preventScreenOn(Z)V
    .locals 5
    .parameter "prevent"

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1749
    if-eqz p1, :cond_0

    .line 1753
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1758
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1759
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1799
    :goto_0
    monitor-exit v1

    .line 1800
    return-void

    .line 1767
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1771
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1776
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1778
    const-string v0, "PowerManagerService"

    const-string v2, "preventScreenOn: turning on after a prior preventScreenOn(true)!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1792
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1797
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 2950
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2953
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2956
    :cond_1
    move-object v0, p1

    .line 2957
    .local v0, finalReason:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PowerManagerService$12;

    invoke-direct {v1, p0, v0}, Lcom/android/server/PowerManagerService$12;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    .line 2966
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2969
    monitor-enter v1

    .line 2972
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2973
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2976
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 4
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 1083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1084
    .local v0, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1085
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1089
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1090
    monitor-exit v2

    .line 1091
    return-void

    .line 1090
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAttentionLight(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 3440
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, p2, v3, v0, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 3442
    return-void

    :cond_0
    move v0, v1

    .line 3441
    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 6
    .parameter "brightness"

    .prologue
    .line 3409
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 3412
    :try_start_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3413
    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-lez v3, :cond_0

    .line 3414
    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le p1, v3, :cond_0

    .line 3415
    iget p1, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 3418
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 3424
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3428
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3432
    :goto_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3433
    :try_start_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iput p1, v3, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 3434
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V

    .line 3435
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3436
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3437
    return-void

    .line 3425
    :catch_0
    move-exception v0

    .line 3426
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "PowerManagerService"

    const-string v5, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3428
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3436
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 3428
    .restart local v1       #identity:J
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3435
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setBacklightBrightnessOff(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    .line 3368
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    .line 3370
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    if-eqz v3, :cond_0

    .line 3371
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 3373
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 3375
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3376
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3377
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3378
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 3379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 3381
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3385
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3389
    :goto_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3390
    :try_start_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 3391
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V

    .line 3392
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3393
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3395
    .end local v1           #identity:J
    :cond_0
    return-void

    .line 3382
    .restart local v1       #identity:J
    :catch_0
    move-exception v0

    .line 3383
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "PowerManagerService"

    const-string v5, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3385
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3393
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 3385
    .restart local v1       #identity:J
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3392
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setButtonBrightnessOverride(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1820
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 1821
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setButtonBrightnessOverride "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 1823
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1827
    :cond_0
    monitor-exit v1

    .line 1828
    return-void

    .line 1827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeyboardVisibility(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    .line 3046
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 3048
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyboardVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eq v0, p1, :cond_1

    .line 3051
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 3055
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3056
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v0, :cond_0

    .line 3058
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3059
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v6, v0

    .line 3060
    .local v6, value:I
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3061
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 3064
    .end local v6           #value:I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3067
    :cond_1
    monitor-exit v7

    .line 3068
    return-void

    .line 3067
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 3398
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3399
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 3400
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxBrightness brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3402
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxBrightness updateLightsLocked mPowerState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 3405
    :cond_0
    monitor-exit v1

    .line 3406
    return-void

    .line 3405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaximumScreenOffTimeount(I)V
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 531
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 533
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 534
    monitor-exit v1

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 19
    .parameter "pokey"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 1176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DEVICE_POWER"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    if-nez p2, :cond_0

    .line 1178
    const-string v15, "PowerManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setPokeLock got null token for tag=\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :goto_0
    return-void

    .line 1182
    :cond_0
    and-int/lit8 v15, p1, 0x6

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1183
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "setPokeLock can\'t have both POKE_LOCK_SHORT_TIMEOUT and POKE_LOCK_MEDIUM_TIMEOUT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1187
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1188
    if-eqz p1, :cond_5

    .line 1189
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1190
    .local v13, p:Lcom/android/server/PowerManagerService$PokeLock;
    const/4 v11, 0x0

    .line 1191
    .local v11, oldPokey:I
    if-eqz v13, :cond_4

    .line 1192
    iget v11, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1193
    move/from16 v0, p1

    iput v0, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1198
    :goto_1
    and-int/lit8 v12, v11, 0x6

    .line 1199
    .local v12, oldTimeout:I
    and-int/lit8 v8, p1, 0x6

    .line 1200
    .local v8, newTimeout:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_2

    if-eq v12, v8, :cond_2

    .line 1201
    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    .line 1210
    .end local v8           #newTimeout:I
    .end local v11           #oldPokey:I
    .end local v12           #oldTimeout:I
    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1211
    .restart local v11       #oldPokey:I
    const/4 v5, 0x0

    .line 1212
    .local v5, cumulative:I
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1213
    .local v9, oldAwakeOnSet:Z
    const/4 v4, 0x0

    .line 1214
    .local v4, awakeOnSet:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1215
    .restart local v13       #p:Lcom/android/server/PowerManagerService$PokeLock;
    iget v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    or-int/2addr v5, v15

    .line 1216
    iget-boolean v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    if-eqz v15, :cond_3

    .line 1217
    const/4 v4, 0x1

    goto :goto_3

    .line 1195
    .end local v4           #awakeOnSet:Z
    .end local v5           #cumulative:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #oldAwakeOnSet:Z
    :cond_4
    new-instance v13, Lcom/android/server/PowerManagerService$PokeLock;

    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/server/PowerManagerService$PokeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1196
    .restart local v13       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1232
    .end local v11           #oldPokey:I
    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1204
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1205
    .local v14, rLock:Lcom/android/server/PowerManagerService$PokeLock;
    if-eqz v14, :cond_2

    .line 1206
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 1220
    .end local v14           #rLock:Lcom/android/server/PowerManagerService$PokeLock;
    .restart local v4       #awakeOnSet:Z
    .restart local v5       #cumulative:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #oldAwakeOnSet:Z
    .restart local v11       #oldPokey:I
    :cond_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1221
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1223
    and-int/lit8 v10, v11, 0x6

    .line 1224
    .local v10, oldCumulativeTimeout:I
    and-int/lit8 v7, p1, 0x6

    .line 1226
    .local v7, newCumulativeTimeout:I
    if-eq v10, v7, :cond_7

    .line 1227
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 1230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iget v15, v15, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 1232
    :cond_7
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 3266
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3267
    :try_start_0
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 3268
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3269
    monitor-exit v1

    .line 3270
    return-void

    .line 3269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenBrightnessOverride(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1806
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 1807
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightnessOverride "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 1809
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1813
    :cond_0
    monitor-exit v1

    .line 1814
    return-void

    .line 1813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStayOnSetting(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    return-void
.end method

.method systemReady()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3284
    new-instance v3, Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/hardware/SensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3285
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 3286
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3287
    .local v2, resources:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 3291
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_0

    .line 3292
    const v3, #array@config_autoBrightnessLevels#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 3294
    const v3, #array@config_autoBrightnessLcdBacklightValues#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 3296
    const v3, #array@config_autoBrightnessButtonBacklightValues#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 3298
    const v3, #array@config_autoBrightnessKeyboardBacklightValues#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 3300
    const v3, #integer@config_lightSensorWarmupTime#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 3302
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    .line 3308
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_3

    .line 3310
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 3316
    :goto_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 3317
    :try_start_0
    const-string v3, "PowerManagerService"

    const-string v7, "system ready!"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 3320
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v3

    const/16 v7, 0xa

    if-gt v3, v7, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    .line 3321
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-nez v3, :cond_1

    .line 3322
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-nez v3, :cond_5

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3325
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3327
    .local v0, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 3328
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3332
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3334
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3335
    return-void

    .end local v0           #identity:J
    :cond_2
    move v3, v5

    .line 3287
    goto/16 :goto_0

    .line 3313
    :cond_3
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_1

    :cond_4
    move v3, v5

    .line 3320
    goto :goto_2

    :cond_5
    move v4, v5

    .line 3322
    goto :goto_3

    .line 3329
    .restart local v0       #identity:J
    :catch_0
    move-exception v3

    .line 3332
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 3334
    .end local v0           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3332
    .restart local v0       #identity:J
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public timeSinceScreenOn()J
    .locals 5

    .prologue
    .line 3037
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3038
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3039
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 3041
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_0

    .line 3042
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 8
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1062
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1063
    .local v2, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1064
    const/4 p2, 0x0

    .line 1066
    :cond_0
    if-eqz p2, :cond_1

    .line 1067
    invoke-virtual {p0, v3, v2}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1069
    :cond_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1070
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 1071
    .local v0, index:I
    if-gez v0, :cond_2

    .line 1072
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock not active"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1079
    .end local v0           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1074
    .restart local v0       #index:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1075
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v1, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1076
    .local v1, oldsource:Landroid/os/WorkSource;
    if-eqz p2, :cond_3

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    iput-object v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1077
    invoke-virtual {p0, v4, v1}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1078
    invoke-virtual {p0, v4, p2}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1079
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    return-void

    .line 1076
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v6, 0x0

    .line 2682
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2684
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->shouldLog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2685
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have DEVICE_POWER permission.  pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :cond_0
    :goto_0
    return-void

    .line 2691
    :cond_1
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    goto :goto_0
.end method

.method public userActivity(JZI)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"

    .prologue
    .line 2695
    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2696
    return-void
.end method

.method public userActivity(JZIZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 2699
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2700
    return-void
.end method

.method public userActivityWithForce(JZZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "force"

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2679
    return-void
.end method
