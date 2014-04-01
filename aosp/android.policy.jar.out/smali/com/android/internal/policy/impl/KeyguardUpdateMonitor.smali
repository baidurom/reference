.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    }
.end annotation


# static fields
.field private static final ACTION_WALLPAPER_SET:Ljava/lang/String; = "com.mediatek.lockscreen.action.WALLPAPER_SET"

.field private static final DEFAULTSIMREMOVED:I = 0x1

.field private static final EXTRA_COMPLETE:Ljava/lang/String; = "com.mediatek.lockscreen.extra.COMPLETE"

.field private static KEYGUARD_DM_LOCKED:Z = false

.field static final LOW_BATTERY_THRESHOLD:I = 0x10

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BOOTUP_MODE_PICK:I = 0x142

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_CONFIGURATION_CHANGED:I = 0x13b

.field private static final MSG_DELAY_SIM_DETECTED:I = 0x13a

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DM_KEYGUARD_UPDATE:I = 0x138

.field private static final MSG_DOWNLOAD_CALIBRATION_DATA_UPDATE:I = 0x145

.field private static final MSG_GPRS_TYPE_SELECT:I = 0x143

.field private static final MSG_KEYGUARD_RESET_DISMISS:I = 0x13d

.field private static final MSG_KEYGUARD_SIM_NAME_UPDATE:I = 0x13f

.field private static final MSG_KEYGUARD_UPDATE_LAYOUT:I = 0x13e

.field private static final MSG_LOCK_SCREEN_MISSED_CALL:I = 0x136

.field private static final MSG_LOCK_SCREEN_WALLPAPER_SET:I = 0x137

.field private static final MSG_MODEM_RESET:I = 0x140

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_PRE_3G_SWITCH:I = 0x141

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIMINFO_CHANGED:I = 0x13c

.field private static final MSG_SIM_DETECTED:I = 0x139

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_SYSTEM_STATE:I = 0x144

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_UNLOCK_KEYGUARD:I = 0x135

.field private static final NEWSIMINSERTED:I = 0x2

.field public static final OMADM_LAWMO_LOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field public static final OMADM_LAWMO_UNLOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final SYSTEM_STATE_BOOTUP:I = 0x1

.field private static final SYSTEM_STATE_SHUTDOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field public static dual_sim_setting:I

.field protected static final mIsCMCC:Z


# instance fields
.field private DEBUG:Z

.field private mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

.field mCalibrationData:Z

.field private mCardTotal:I

.field private mClockVisible:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDevicePluggedIn:Z

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mFailedAttempts:I

.field private mGPRSDialog1:Landroid/app/AlertDialog;

.field private mGPRSDialog2:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInPortrait:Z

.field private mInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardOpen:Z

.field private mKeyguardBypassEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissedCall:I

.field mNetSearching:Z

.field mNetSearchingGemini:Z

.field private mPINFlag:I

.field private mPhoneCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPromptView:Landroid/view/View;

.field private mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

.field private mRingMode:I

.field private mSIMCardDialog:Landroid/app/AlertDialog;

.field private mSIMRemoved:Z

.field private mSim2LastState:Lcom/android/internal/telephony/IccCard$State;

.field private mSim2State:Lcom/android/internal/telephony/IccCard$State;

.field private mSimLastState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

.field private mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonyPlmnGemini:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;

.field private mTelephonySpnGemini:Ljava/lang/CharSequence;

.field private mWallpaperSetComplete:Z

.field private mWallpaperUpdate:Z

.field private shouldPopup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsCMCC:Z

    .line 172
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->dual_sim_setting:I

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    .line 120
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 121
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 123
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCard$State;

    .line 124
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCard$State;

    .line 146
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 153
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;

    .line 154
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    .line 155
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 156
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    .line 157
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    .line 158
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    .line 159
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    .line 160
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I

    .line 161
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    .line 163
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z

    .line 173
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    .line 174
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    .line 175
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    .line 176
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    .line 233
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearching:Z

    .line 234
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    .line 236
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    .line 242
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCalibrationData:Z

    .line 354
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 356
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 473
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_Check_Locked()V

    .line 474
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isGMSRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const-string v2, "KeyguardUpdateMonitor"

    const-string v5, "first reboot, GMS is running"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x13a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 480
    :cond_0
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 503
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    .line 527
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5, v3, v4}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 529
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5, v3, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #bool@config_bypass_keyguard_if_slider_open#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyguardBypassEnabled:Z

    .line 540
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 543
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 547
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v2, :cond_1

    .line 548
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 563
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 569
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    .line 571
    .local v1, provisioned:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v1, v2, :cond_1

    .line 572
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 573
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x134

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 581
    .end local v1           #provisioned:Z
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v5, 0x64

    invoke-direct {v2, v3, v5, v4, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 582
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePluggedIn:Z

    .line 584
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 586
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 591
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    const-string v2, "android.intent.action.NEW_SIM_DETECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    const-string v2, "android.intent.action.DEFAULT_SIM_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 599
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v2, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string v2, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    const-string v2, "android.intent.action.RADIO_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v2, "android.provider.Telephony.DUAL_SIM_MODE_SELECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v2, "android.provider.Telephony.GPRS_CONNECTION_TYPE_SELECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v2, "android.provider.Telephony.UNLOCK_KEYGUARD"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string v2, "com.android.phone.NotificationMgr.MissedCall_intent"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    const-string v2, "com.mediatek.lockscreen.action.WALLPAPER_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    const-string v2, "android.intent.action.normal.boot"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v2, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v2, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v2, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    const-string v2, "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 837
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    .line 838
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    move v2, v4

    .line 540
    goto/16 :goto_0

    :cond_3
    move v1, v4

    .line 569
    goto/16 :goto_1
.end method

.method private DM_Check_Locked()V
    .locals 7

    .prologue
    .line 1952
    :try_start_0
    const-string v4, "DMAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1953
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1954
    invoke-static {v1}, Lcom/mediatek/dmagent/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/dmagent/DMAgent;

    move-result-object v0

    .line 1955
    .local v0, agent:Lcom/mediatek/dmagent/DMAgent;
    invoke-interface {v0}, Lcom/mediatek/dmagent/DMAgent;->isLockFlagSet()Z

    move-result v3

    .line 1956
    .local v3, flag:Z
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DM_Check_Locked, the lock flag is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    sput-boolean v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    .line 1964
    .end local v0           #agent:Lcom/mediatek/dmagent/DMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #flag:Z
    :goto_0
    return-void

    .line 1959
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_0
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "DM_Check_Locked, DMAgent doesn\'t exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1961
    .end local v1           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1962
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "get DM status failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMCardChanged(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDelaySIMCardChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMNameUpdate(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleRadioStateChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handle3GSwitchEvent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSystemStateChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDownloadCalibrationDataUpdate()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return p1
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput-boolean p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBootupModePick()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMInfoChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleGprsTypePickSim1()V

    return-void
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #string@lockscreen_carrier_default#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1533
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1534
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1541
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1538
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1541
    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1557
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1558
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1563
    .end local v0           #spn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handle3GSwitchEvent()V
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    .line 1174
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 6
    .parameter "batteryStatus"

    .prologue
    .line 1100
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleBatteryUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 1103
    .local v0, batteryUpdateInteresting:Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 1104
    if-eqz v0, :cond_1

    .line 1105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1107
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v3

    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v4

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private handleBootupModePick()V
    .locals 0

    .prologue
    .line 1302
    return-void
.end method

.method private handleCarrierInfoUpdate()V
    .locals 4

    .prologue
    .line 1117
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1121
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1123
    :cond_1
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 3

    .prologue
    .line 1482
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleClockVisibilityChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1484
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onClockVisibilityChanged()V

    .line 1483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1486
    :cond_1
    return-void
.end method

.method private handleDelaySIMCardChanged()V
    .locals 1

    .prologue
    .line 942
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->start()V

    .line 965
    return-void
.end method

.method private handleDownloadCalibrationDataUpdate()V
    .locals 3

    .prologue
    .line 1495
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleDownloadCalibrationDataUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1499
    :cond_0
    return-void
.end method

.method private handleGprsTypePickSim1()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1309
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleGprsTypePickSim1"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x2050037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040001

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$9;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    .line 1368
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1369
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_sf_slowBlur#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1375
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1376
    return-void
.end method

.method private handleRadioStateChanged(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1177
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRadioStateChanged, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSim2State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 1180
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 1181
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_2

    .line 1184
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    .line 1192
    :cond_2
    :goto_0
    return-void

    .line 1186
    :cond_3
    if-ne v4, p1, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    .line 1188
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    goto :goto_0
.end method

.method private handleSIMCardChanged(II)V
    .locals 11
    .parameter "CardState"
    .parameter "CardTotalNumber"

    .prologue
    const v10, 0x2050086

    const v9, 0x2050075

    const/16 v8, 0x7d8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 968
    packed-switch p1, :pswitch_data_0

    .line 1038
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown SIMCard Changed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 970
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    .line 971
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    .line 972
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMCardInserted, CardTotalNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSIMRemoved="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCardTotal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 975
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x207000d

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 976
    const/4 v2, 0x0

    .line 977
    .local v2, msg:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v3, p2, :cond_0

    .line 978
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 982
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->InitView(Landroid/view/View;Ljava/lang/String;)V

    .line 983
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 984
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x2050072

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 985
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 986
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 988
    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$7;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 998
    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 999
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    .line 1000
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setType(I)V

    .line 1001
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1040
    :goto_1
    return-void

    .line 980
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1006
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #msg:Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    .line 1007
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    .line 1008
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMCardRemoved, CardTotalNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSIMRemoved="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCardTotal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1011
    .restart local v2       #msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1012
    .restart local v1       #factory:Landroid/view/LayoutInflater;
    const v3, 0x207000f

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1013
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v4, 0x20c0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->InitView(Landroid/view/View;Ljava/lang/String;)V

    .line 1015
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1016
    .restart local v0       #dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x2050076

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1018
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1020
    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$8;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1030
    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1031
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    .line 1032
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setType(I)V

    .line 1033
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 968
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSIMInfoChanged(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 935
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onSIMInfoChanged(I)V

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_0
    return-void
.end method

.method private handleSIMNameUpdate(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 926
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onLockScreenUpdate(I)V

    .line 926
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateResources()V

    .line 931
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 6
    .parameter "simArgs"

    .prologue
    .line 1129
    iget-object v1, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 1131
    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1132
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSimStateChange: intentValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state resolved to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    iget v3, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    if-nez v3, :cond_2

    .line 1138
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1139
    .local v2, tempState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCard$State;

    .line 1145
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_4

    .line 1146
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_1

    .line 1152
    :cond_1
    iget v3, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    if-nez v3, :cond_3

    .line 1153
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1154
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSimStateChange: mSimState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1161
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    iget v4, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    invoke-interface {v3, v1, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1160
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1141
    .end local v0           #i:I
    .end local v2           #tempState:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 1142
    .restart local v2       #tempState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1156
    :cond_3
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 1157
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSimStateChange: mSim2State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1169
    :cond_4
    return-void
.end method

.method private handleSystemStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    if-nez v0, :cond_1

    .line 1197
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "mSystemStateCallback is null, skipped!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1211
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "received unknown system state change event"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1203
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;->onSysBootup()V

    goto :goto_0

    .line 1207
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;->onSysShutdown()V

    goto :goto_0

    .line 1201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTimeUpdate()V
    .locals 3

    .prologue
    .line 1090
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleTimeUpdate"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    :cond_1
    return-void
.end method

.method private isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 1525
    iget v0, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .parameter "old"
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1503
    invoke-static {p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 1504
    .local v0, nowPluggedIn:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v2

    .line 1505
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 1508
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 1521
    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    .line 1505
    goto :goto_0

    .line 1513
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1518
    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_3
    move v3, v4

    .line 1521
    goto :goto_1
.end method

.method private static isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 3
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 1489
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DM_IsLocked()Z
    .locals 1

    .prologue
    .line 1944
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    return v0
.end method

.method public InitView(Landroid/view/View;Ljava/lang/String;)V
    .locals 32
    .parameter "v"
    .parameter "s"

    .prologue
    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "voice_call_sim_setting"

    const-wide/16 v30, -0x5

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v24

    .line 2060
    .local v24, voicecallSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "sms_sim_setting"

    const-wide/16 v30, -0x5

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 2062
    .local v13, smsSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "gprs_connection_sim_setting"

    const-wide/16 v30, -0x5

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 2064
    .local v6, dateSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "video_call_sim_setting"

    const-wide/16 v30, -0x5

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    .line 2066
    .local v19, videoSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "phone"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 2067
    .local v17, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v28

    if-eqz v28, :cond_2

    const/4 v10, 0x1

    .line 2068
    .local v10, isVoiceCapable:Z
    :goto_0
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v28

    if-eqz v28, :cond_3

    const/4 v9, 0x1

    .line 2069
    .local v9, isSmsCapable:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    const-string v28, "KeyguardUpdateMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "InitView, isVoiceCapable="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " isSmsCapable "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_0
    const-string v28, "KeyguardUpdateMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "voicecallSlot="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ",smsSlot="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ",dateSlot="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", videoSlot="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const v28, 0x20c0034

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2075
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 2076
    const v28, 0x20c0035

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2077
    .local v8, firstName:Landroid/widget/TextView;
    const v28, 0x20c0036

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2078
    .local v11, secondName:Landroid/widget/TextView;
    const v28, 0x20c0037

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const v29, 0x205008c

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(I)V

    .line 2080
    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 2081
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2082
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->addNameForSIMDetectDialog(Landroid/widget/TextView;I)V

    .line 2092
    .end local v8           #firstName:Landroid/widget/TextView;
    .end local v11           #secondName:Landroid/widget/TextView;
    :cond_1
    :goto_2
    const v28, 0x20c0038

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 2093
    .local v23, voicecall:Landroid/widget/TextView;
    const v28, 0x20c003a

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2095
    .local v21, videocall:Landroid/widget/TextView;
    if-eqz v10, :cond_6

    .line 2097
    const v28, 0x2050078

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2098
    const v28, 0x205008d

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2106
    :goto_3
    const v28, 0x20c003c

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2107
    .local v12, sms:Landroid/widget/TextView;
    if-eqz v9, :cond_7

    .line 2109
    const v28, 0x2050079

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2117
    :goto_4
    const v28, 0x20c003e

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2118
    .local v3, data:Landroid/widget/TextView;
    const v28, 0x205007a

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2120
    const v28, 0x20c0039

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 2121
    .local v26, voicecalloptr:Landroid/widget/TextView;
    const v28, 0x20c003b

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2123
    .local v18, videcallooptr:Landroid/widget/TextView;
    if-eqz v10, :cond_a

    .line 2125
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2126
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v27

    .line 2127
    .local v27, voicecalloptrname:Ljava/lang/String;
    if-nez v27, :cond_8

    .line 2128
    const v28, 0x2050085

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2133
    :goto_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2134
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v22

    .line 2135
    .local v22, videooptnamestring:Ljava/lang/String;
    if-nez v22, :cond_9

    .line 2136
    const v28, 0x2050085

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2148
    .end local v22           #videooptnamestring:Ljava/lang/String;
    .end local v27           #voicecalloptrname:Ljava/lang/String;
    :goto_6
    const/16 v28, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2149
    const/16 v28, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2152
    const v28, 0x20c003d

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2153
    .local v15, smsoptr:Landroid/widget/TextView;
    if-eqz v9, :cond_c

    .line 2155
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2156
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v16

    .line 2157
    .local v16, smsoptrname:Ljava/lang/String;
    if-nez v16, :cond_b

    .line 2158
    const v28, 0x2050085

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2168
    .end local v16           #smsoptrname:Ljava/lang/String;
    :goto_7
    const v28, 0x20c003f

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2169
    .local v5, dataoptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2170
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v4

    .line 2171
    .local v4, dataoptnamestring:Ljava/lang/String;
    if-nez v4, :cond_d

    .line 2172
    const v28, 0x2050085

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2176
    :goto_8
    return-void

    .line 2067
    .end local v3           #data:Landroid/widget/TextView;
    .end local v4           #dataoptnamestring:Ljava/lang/String;
    .end local v5           #dataoptr:Landroid/widget/TextView;
    .end local v9           #isSmsCapable:Z
    .end local v10           #isVoiceCapable:Z
    .end local v12           #sms:Landroid/widget/TextView;
    .end local v15           #smsoptr:Landroid/widget/TextView;
    .end local v18           #videcallooptr:Landroid/widget/TextView;
    .end local v21           #videocall:Landroid/widget/TextView;
    .end local v23           #voicecall:Landroid/widget/TextView;
    .end local v26           #voicecalloptr:Landroid/widget/TextView;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2068
    .restart local v10       #isVoiceCapable:Z
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2083
    .restart local v8       #firstName:Landroid/widget/TextView;
    .restart local v9       #isSmsCapable:Z
    .restart local v11       #secondName:Landroid/widget/TextView;
    :cond_4
    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 2084
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2085
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->addNameForSIMDetectDialog(Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 2087
    :cond_5
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->addNameForSIMDetectDialog(Landroid/widget/TextView;I)V

    .line 2088
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->addNameForSIMDetectDialog(Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 2102
    .end local v8           #firstName:Landroid/widget/TextView;
    .end local v11           #secondName:Landroid/widget/TextView;
    .restart local v21       #videocall:Landroid/widget/TextView;
    .restart local v23       #voicecall:Landroid/widget/TextView;
    :cond_6
    const/16 v28, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2103
    const/16 v28, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2113
    .restart local v12       #sms:Landroid/widget/TextView;
    :cond_7
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2130
    .restart local v3       #data:Landroid/widget/TextView;
    .restart local v18       #videcallooptr:Landroid/widget/TextView;
    .restart local v26       #voicecalloptr:Landroid/widget/TextView;
    .restart local v27       #voicecalloptrname:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2138
    .restart local v22       #videooptnamestring:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2143
    .end local v22           #videooptnamestring:Ljava/lang/String;
    .end local v27           #voicecalloptrname:Ljava/lang/String;
    :cond_a
    const/16 v28, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2144
    const/16 v28, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 2160
    .restart local v15       #smsoptr:Landroid/widget/TextView;
    .restart local v16       #smsoptrname:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2165
    .end local v16           #smsoptrname:Ljava/lang/String;
    :cond_c
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 2174
    .restart local v4       #dataoptnamestring:Ljava/lang/String;
    .restart local v5       #dataoptr:Landroid/widget/TextView;
    :cond_d
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method

.method public IsSIMInserted(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 2195
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2197
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 2204
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "Get sim insert status failure!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2204
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addNameForSIMDetectDialog(Landroid/widget/TextView;I)V
    .locals 3
    .parameter "v"
    .parameter "slotId"

    .prologue
    .line 2179
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2180
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, optrname:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2182
    const v1, 0x2050085

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2186
    :goto_0
    return-void

    .line 2184
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public clearFailedAttempts()V
    .locals 1

    .prologue
    .line 1900
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1901
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    return v0
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 1896
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getLastSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 3
    .parameter "simId"

    .prologue
    .line 1802
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1803
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSim2LastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCard$State;

    .line 1807
    :goto_0
    return-object v0

    .line 1806
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getMissedCall()I
    .locals 1

    .prologue
    .line 1915
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I

    return v0
.end method

.method public getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 1990
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1991
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOptrDrawableById, xxsimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v3, p1

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1993
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_1

    .line 1994
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "getOptrDrawableBySlotId, return null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 1997
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 2043
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 2044
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrDrawableBySlot, xxslot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2046
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 2047
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrDrawableBySlotId, return null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const/4 v1, 0x0

    .line 2050
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 2053
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getOptrNameById(J)Ljava/lang/String;
    .locals 5
    .parameter "simId"

    .prologue
    const-wide/16 v3, 0x0

    .line 1968
    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    .line 1969
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrNameById, xxsimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1971
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 1972
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const/4 v1, 0x0

    .line 1985
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1975
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1978
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    .line 1979
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1980
    :cond_2
    const-wide/16 v1, -0x2

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    .line 1981
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1982
    :cond_3
    cmp-long v1, v3, p1

    if-nez v1, :cond_4

    .line 1983
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1985
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrNameBySlot(J)Ljava/lang/String;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 2004
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 2005
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrNameBySlot, xxSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2007
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 2008
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const/4 v1, 0x0

    .line 2012
    :goto_0
    return-object v1

    .line 2011
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 2015
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getOptrNameBySlotForCTA(J)Ljava/lang/String;
    .locals 5
    .parameter "Slot"

    .prologue
    const v4, 0x205006f

    .line 2021
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_3

    .line 2022
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrNameBySlot, xxSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2024
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2025
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const-wide/16 v1, 0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 2027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 02"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2036
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 2029
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2032
    :cond_2
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 2036
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPINDismissFlag(IZ)Z
    .locals 5
    .parameter "slotId"
    .parameter "PINFlag"

    .prologue
    .line 1751
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINDismissFlag, slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PINFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/4 v0, 0x1

    .line 1753
    .local v0, bitSet:I
    const/4 v1, 0x0

    .line 1754
    .local v1, result:I
    if-eqz p2, :cond_0

    .line 1755
    shl-int v1, v0, p1

    .line 1759
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1757
    :cond_0
    add-int/lit8 v2, p1, 0x2

    shl-int v1, v0, v2

    goto :goto_0

    .line 1759
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1912
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getSearchingFlag(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 908
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 910
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    .line 912
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearching:Z

    goto :goto_0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 3
    .parameter "simId"

    .prologue
    .line 1792
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1793
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSim2State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 1797
    :goto_0
    return-object v0

    .line 1796
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simId"

    .prologue
    .line 1871
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    .line 1874
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simId"

    .prologue
    .line 1879
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    .line 1882
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getWallpaperStatus()Z
    .locals 1

    .prologue
    .line 1919
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return v0
.end method

.method public getWallpaperUpdate()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    return v0
.end method

.method public handleDMKeyguardUpdate()V
    .locals 4

    .prologue
    .line 1474
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDMKeyguardUpdate: flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onDMKeyguardUpdate()V

    .line 1476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1479
    :cond_0
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 3

    .prologue
    .line 1045
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onDeviceProvisioned()V

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1051
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 1053
    :cond_1
    return-void
.end method

.method public handleGprsTypePickSim2()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1383
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleGprsTypePickSim2"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x2050037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040002

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    .line 1442
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1443
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_sf_slowBlur#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1450
    return-void
.end method

.method protected handleLockScreenUpdateLayout(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 918
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onLockScreenUpdate(I)V

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 922
    :cond_0
    return-void
.end method

.method public handleMissedCall(I)V
    .locals 2
    .parameter "missedCall"

    .prologue
    .line 1453
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onMissedCallChanged(I)V

    .line 1453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    :cond_0
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 1056
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePhoneStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1060
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1063
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 1064
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1066
    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1067
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1073
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1074
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;->onPhoneStateChanged(I)V

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1068
    .end local v0           #i:I
    :cond_5
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1069
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1070
    :cond_6
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1071
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1076
    .restart local v0       #i:I
    :cond_7
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 1079
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRingerModeChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    .line 1081
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 1081
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    :cond_1
    return-void
.end method

.method public handleWallpaperSet()V
    .locals 2

    .prologue
    .line 1459
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    .line 1460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onWallpaperSetComplete()V

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1463
    :cond_0
    return-void
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 1908
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharged()Z
    .locals 2

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceCharging()Z
    .locals 2

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDevicePluggedIn()Z
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1892
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method isGMSRunning()Z
    .locals 6

    .prologue
    .line 849
    const/4 v2, 0x0

    .line 850
    .local v2, running:Z
    const/4 v1, 0x1

    .line 851
    .local v1, isExist:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    .line 852
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.setupwizard"

    const-string v5, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    .line 856
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_1

    .line 864
    :cond_0
    const/4 v2, 0x1

    .line 866
    :cond_1
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGMSRunning, isGMSExist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", running = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return v2

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardBypassEnabled()Z
    .locals 1

    .prologue
    .line 1837
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyguardBypassEnabled:Z

    return v0
.end method

.method public isPhoneAppReady()Z
    .locals 8

    .prologue
    .line 1923
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1925
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 1926
    .local v3, ready:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1927
    .local v5, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v5, :cond_0

    .line 1928
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "runningAppInfo == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1937
    .end local v3           #ready:Z
    .local v4, ready:I
    :goto_0
    return v4

    .line 1931
    .end local v4           #ready:I
    .restart local v3       #ready:Z
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1932
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "com.android.phone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1933
    const/4 v3, 0x1

    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    move v4, v3

    .line 1937
    .restart local v4       #ready:I
    goto :goto_0
.end method

.method public registerDeviceInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onClockVisibilityChanged()V

    .line 1691
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onDeviceProvisioned()V

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another Device callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1708
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 1712
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 1713
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 1715
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1718
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another INFO callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerPhoneStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;->onPhoneStateChanged(I)V

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1682
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another Phone callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerRadioStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    .line 1699
    return-void
.end method

.method public registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1772
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another SIM callback"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerSystemStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    .line 1731
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1574
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1575
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1576
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1577
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1782
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1783
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1784
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 1

    .prologue
    .line 1904
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1905
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 2

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 1819
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1823
    :cond_0
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 2
    .parameter "simId"

    .prologue
    .line 1827
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 1829
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 1834
    :cond_0
    :goto_0
    return-void

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 1832
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public reportWallpaperSet()V
    .locals 1

    .prologue
    .line 1470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    .line 1471
    return-void
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugFlag"

    .prologue
    .line 2208
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    .line 2209
    return-void
.end method

.method public setPINDismiss(IZZ)V
    .locals 3
    .parameter "slotId"
    .parameter "PINFlag"
    .parameter "flag"

    .prologue
    .line 1741
    const/4 v0, 0x1

    .line 1742
    .local v0, bitSet:I
    if-eqz p2, :cond_0

    .end local p1
    :goto_0
    shl-int/2addr v0, p1

    .line 1743
    if-eqz p3, :cond_1

    .line 1744
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    .line 1748
    :goto_1
    return-void

    .line 1742
    .restart local p1
    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 1746
    .end local p1
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    goto :goto_1
.end method

.method public shouldShowBatteryInfo()Z
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

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

.method public unRegisterRadioStateCallback()V
    .locals 1

    .prologue
    .line 1734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    .line 1735
    return-void
.end method

.method updateResources()V
    .locals 9

    .prologue
    const v8, 0x2050086

    const v7, 0x2050075

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 871
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    .line 872
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    if-eqz v3, :cond_3

    .line 873
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "updateResources, default sim removed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    const v4, 0x2050076

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 875
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 876
    .local v1, nagbtn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 877
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(I)V

    .line 879
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 880
    .local v2, posbtn:Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 881
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    .line 883
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->InitView(Landroid/view/View;Ljava/lang/String;)V

    .line 905
    .end local v0           #msg:Ljava/lang/String;
    .end local v1           #nagbtn:Landroid/widget/Button;
    .end local v2           #posbtn:Landroid/widget/Button;
    :cond_2
    :goto_0
    return-void

    .line 885
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    if-nez v3, :cond_2

    .line 886
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "updateResources, new sim inserted"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    const v4, 0x2050072

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 888
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 889
    .restart local v1       #nagbtn:Landroid/widget/Button;
    if-eqz v1, :cond_4

    .line 890
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(I)V

    .line 892
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 893
    .restart local v2       #posbtn:Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 894
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    .line 896
    :cond_5
    const/4 v0, 0x0

    .line 897
    .restart local v0       #msg:Ljava/lang/String;
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    if-ne v3, v4, :cond_6

    .line 898
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 902
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->InitView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 900
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
