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

.field public static final LOW_BATTERY_THRESHOLD:I = 0x10

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

.field private static final MSG_HOTSPOT_DATA:I = 0x146

.field private static final MSG_KEYGUARD_RESET_DISMISS:I = 0x13d

.field private static final MSG_KEYGUARD_SIM_NAME_UPDATE:I = 0x13f

.field private static final MSG_KEYGUARD_UPDATE_LAYOUT:I = 0x13e

.field private static final MSG_LOCK_SCREEN_MISSED_CALL:I = 0x136

.field private static final MSG_LOCK_SCREEN_WALLPAPER_SET:I = 0x137

.field private static final MSG_MODEM_RESET:I = 0x140

.field private static final MSG_MULTITHEME_LOCKSREEN_ENABLE:I = 0x147

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_PRE_3G_SWITCH:I = 0x141

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIMINFO_CHANGED:I = 0x13c

.field private static final MSG_SIM_DETECTED:I = 0x139

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_STATUSBAR_LOCKSREEN_ENABLE:I = 0x1f5

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

.field public static final mIsCMCC:Z

.field static mmitest:Ljava/lang/String;


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

.field private mIsPasswordLock:Z

.field private mKeyboardOpen:Z

.field private mKeyguardBypassEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

.field private mMissedCall:I

.field public mMultithemLockscreen:Z

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

.field private mShowedVoicePrint:Z

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

.field private mStatusBarExpand:Z

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
    .line 118
    const-string v0, "ro.mmitest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mmitest:Ljava/lang/String;

    .line 174
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsCMCC:Z

    .line 182
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->dual_sim_setting:I

    .line 234
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

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    .line 126
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 127
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 129
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCard$State;

    .line 130
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCard$State;

    .line 134
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 135
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 154
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 156
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 157
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    .line 163
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;

    .line 164
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    .line 165
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 166
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    .line 167
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    .line 168
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    .line 169
    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    .line 170
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I

    .line 171
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z

    .line 183
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    .line 184
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    .line 185
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    .line 186
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    .line 245
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearching:Z

    .line 246
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    .line 248
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    .line 254
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCalibrationData:Z

    .line 367
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 369
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 492
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_Check_Locked()V

    .line 493
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isGMSRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const-string v2, "KeyguardUpdateMonitor"

    const-string v5, "first reboot, GMS is running"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 497
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x13a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 499
    :cond_0
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 522
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    .line 546
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5, v3, v4}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 548
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5, v3, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 556
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #bool@config_bypass_keyguard_if_slider_open#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyguardBypassEnabled:Z

    .line 558
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "statusbar_expand_lockscreen"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    .line 560
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 563
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 567
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v2, :cond_1

    .line 568
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 583
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 589
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    .line 591
    .local v1, provisioned:Z
    :goto_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v1, v2, :cond_1

    .line 592
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 593
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x134

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 601
    .end local v1           #provisioned:Z
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v5, 0x64

    invoke-direct {v2, v3, v5, v4, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 602
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePluggedIn:Z

    .line 604
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 606
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    .line 608
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 610
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 611
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    const-string v2, "android.intent.action.NEW_SIM_DETECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    const-string v2, "android.intent.action.DEFAULT_SIM_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v2, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string v2, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string v2, "android.intent.action.RADIO_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    const-string v2, "android.provider.Telephony.DUAL_SIM_MODE_SELECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string v2, "android.provider.Telephony.GPRS_CONNECTION_TYPE_SELECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string v2, "android.provider.Telephony.UNLOCK_KEYGUARD"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v2, "com.android.phone.NotificationMgr.MissedCall_intent"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    const-string v2, "com.mediatek.lockscreen.action.WALLPAPER_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string v2, "android.intent.action.normal.boot"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v2, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v2, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v2, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v2, "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v2, "com.baidu.lockscreen.syncdone"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v2, "theme.lockscreen.action.apply_theme"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    const-string v2, "theme.lockscreen.action.reduce_theme"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v2, "com.baidu.lockscreen.action.reduce_theme_settings"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    const-string v2, "com.baidu.lockscreen.statusbar.expand"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 877
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    .line 878
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    move v2, v4

    .line 558
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 560
    goto/16 :goto_1

    :cond_4
    move v1, v4

    .line 589
    goto/16 :goto_2
.end method

.method private DM_Check_Locked()V
    .locals 7

    .prologue
    .line 2078
    :try_start_0
    const-string v4, "DMAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2079
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 2080
    invoke-static {v1}, Lcom/mediatek/dmagent/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/dmagent/DMAgent;

    move-result-object v0

    .line 2081
    .local v0, agent:Lcom/mediatek/dmagent/DMAgent;
    invoke-interface {v0}, Lcom/mediatek/dmagent/DMAgent;->isLockFlagSet()Z

    move-result v3

    .line 2082
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

    .line 2083
    sput-boolean v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    .line 2090
    .end local v0           #agent:Lcom/mediatek/dmagent/DMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #flag:Z
    :goto_0
    return-void

    .line 2085
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_0
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "DM_Check_Locked, DMAgent doesn\'t exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2087
    .end local v1           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 2088
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
    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMCardChanged(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDelaySIMCardChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMNameUpdate(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleRadioStateChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handle3GSwitchEvent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSystemStateChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDownloadCalibrationDataUpdate()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return p1
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    sput-boolean p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBootupModePick()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMInfoChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleGprsTypePickSim1()V

    return-void
.end method

.method private checkAndSetDefaultDataConnectionSim()V
    .locals 17

    .prologue
    .line 2365
    const-wide/16 v2, 0x0

    .line 2367
    .local v2, defaultConnectionSimid:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gprs_connection_sim_setting"

    const-wide/16 v15, 0x0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 2371
    .local v9, prevSimId:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 2372
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 2373
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/provider/Telephony$SIMInfo;

    iget-wide v13, v13, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v13, v9, v13

    if-nez v13, :cond_1

    .line 2409
    :cond_0
    :goto_0
    return-void

    .line 2377
    :cond_1
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/provider/Telephony$SIMInfo;

    iget-wide v2, v13, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 2407
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gprs_connection_sim_setting"

    invoke-static {v13, v14, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 2378
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 2379
    const/4 v1, 0x0

    .line 2380
    .local v1, bPrevSimExist:Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    .line 2381
    .local v11, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget-wide v13, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v13, v13, v9

    if-nez v13, :cond_4

    .line 2382
    const/4 v1, 0x1

    .line 2386
    .end local v11           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_5
    if-nez v1, :cond_0

    .line 2391
    :try_start_0
    const-string v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 2393
    .local v6, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v12

    .line 2394
    .local v12, slotid:I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    .line 2395
    const/4 v12, 0x0

    .line 2398
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v13, v12}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v7

    .line 2399
    .local v7, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v7, :cond_2

    .line 2400
    iget-wide v2, v7, Landroid/provider/Telephony$SIMInfo;->mSimId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2402
    .end local v6           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v7           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v12           #slotid:I
    :catch_0
    move-exception v4

    .line 2403
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "KeyguardUpdateMonitor"

    const-string v14, "setDefaultDataConnectionSim error"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #string@lockscreen_carrier_default#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getMultithemLockscreen()Z
    .locals 4

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

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
    .line 1647
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1648
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1655
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1652
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1655
    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1671
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1673
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1677
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
    .line 1287
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    .line 1288
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 6
    .parameter "batteryStatus"

    .prologue
    .line 1214
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleBatteryUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 1217
    .local v0, batteryUpdateInteresting:Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 1218
    if-eqz v0, :cond_1

    .line 1219
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1221
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

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private handleBootupModePick()V
    .locals 0

    .prologue
    .line 1416
    return-void
.end method

.method private handleCarrierInfoUpdate()V
    .locals 4

    .prologue
    .line 1231
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

    .line 1234
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    :cond_1
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 3

    .prologue
    .line 1596
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleClockVisibilityChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1598
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onClockVisibilityChanged()V

    .line 1597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    :cond_1
    return-void
.end method

.method private handleDelaySIMCardChanged()V
    .locals 1

    .prologue
    .line 981
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->start()V

    .line 1004
    return-void
.end method

.method private handleDownloadCalibrationDataUpdate()V
    .locals 3

    .prologue
    .line 1609
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleDownloadCalibrationDataUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1611
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1613
    :cond_0
    return-void
.end method

.method private handleGprsTypePickSim1()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1423
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleGprsTypePickSim1"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x40b0013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x404

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$8;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$8;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    .line 1482
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1483
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_sf_slowBlur#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1485
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1490
    return-void
.end method

.method private handleRadioStateChanged(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1291
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

    .line 1293
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 1294
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 1295
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    .line 1306
    :cond_2
    :goto_0
    return-void

    .line 1300
    :cond_3
    if-ne v4, p1, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    .line 1302
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_2

    .line 1303
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    goto :goto_0
.end method

.method private handleSIMCardChanged(II)V
    .locals 12
    .parameter "CardState"
    .parameter "CardTotalNumber"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1015
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->prehandleSIMCardChanged()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1105
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown SIMCard Changed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1022
    :pswitch_0
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    .line 1023
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    .line 1024
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMCardInserted, CardTotalNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mSIMRemoved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCardTotal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1027
    .local v1, factory:Landroid/view/LayoutInflater;
    const v5, 0x4090025

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1028
    const/4 v3, 0x0

    .line 1029
    .local v3, msg:Ljava/lang/String;
    if-ne v11, p2, :cond_2

    .line 1030
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x40b002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1034
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->InitView(Landroid/view/View;Ljava/lang/String;)V

    .line 1057
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newphonewizard has been done? NEW_PHONE_WIZARDED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "NEW_PHONE_WIZARDED"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "NEW_PHONE_WIZARDED"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v10, v5, :cond_0

    .line 1059
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 1060
    .local v4, sil:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v11, v5, :cond_0

    .line 1061
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "two sim cards inserted, start com.baidu.dual.card.setting.wizard"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.baidu.dual.card.setting.wizard"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1065
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1066
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "StartActivity com.baidu.dual.card.setting.wizard"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1032
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #sil:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x40b002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1073
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v3           #msg:Ljava/lang/String;
    :pswitch_1
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    .line 1074
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    .line 1075
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMCardRemoved, CardTotalNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mSIMRemoved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCardTotal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x40b002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1078
    .restart local v3       #msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1079
    .restart local v1       #factory:Landroid/view/LayoutInflater;
    const v5, 0x4090028

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1080
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v6, 0x4020057

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->InitView(Landroid/view/View;Ljava/lang/String;)V

    .line 1082
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1083
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x40b0027

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1084
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1085
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1087
    const v5, #string@ok#t

    new-instance v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$7;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$7;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1097
    const v5, 0x40b0028

    invoke-virtual {v0, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1098
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    .line 1099
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1100
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1020
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
    .line 974
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onSIMInfoChanged(I)V

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_0
    return-void
.end method

.method private handleSIMNameUpdate(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 965
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 966
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onLockScreenUpdate(I)V

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateResources()V

    .line 970
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 6
    .parameter "simArgs"

    .prologue
    .line 1243
    iget-object v1, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 1245
    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1246
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

    .line 1251
    :cond_0
    iget v3, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    if-nez v3, :cond_2

    .line 1252
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1253
    .local v2, tempState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCard$State;

    .line 1259
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_4

    .line 1260
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_1

    .line 1266
    :cond_1
    iget v3, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    if-nez v3, :cond_3

    .line 1267
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1268
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

    .line 1274
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1275
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    iget v4, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simId:I

    invoke-interface {v3, v1, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1274
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1255
    .end local v0           #i:I
    .end local v2           #tempState:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 1256
    .restart local v2       #tempState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1270
    :cond_3
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 1271
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

    .line 1283
    :cond_4
    return-void
.end method

.method private handleSystemStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    if-nez v0, :cond_1

    .line 1311
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "mSystemStateCallback is null, skipped!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1325
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "received unknown system state change event"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1317
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;->onSysBootup()V

    goto :goto_0

    .line 1321
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;->onSysShutdown()V

    goto :goto_0

    .line 1315
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
    .line 1204
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleTimeUpdate"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1206
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 1205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1208
    :cond_1
    return-void
.end method

.method private isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 1639
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

    .line 1617
    invoke-static {p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 1618
    .local v0, nowPluggedIn:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v2

    .line 1619
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 1622
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 1635
    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    .line 1619
    goto :goto_0

    .line 1627
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1632
    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_3
    move v3, v4

    .line 1635
    goto :goto_1
.end method

.method private static isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 3
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 1603
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

.method private prehandleSIMCardChanged()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2412
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "NEW_PHONE_FIRSTSTART"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2415
    .local v1, fisrtStartNewPhone:I
    if-nez v1, :cond_1

    .line 2416
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "NEW_PHONE_FIRSTSTART"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2417
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setDefaultDataConnectionSim()V

    .line 2423
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2424
    .local v0, cmgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 2425
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 2435
    .end local v0           #cmgr:Landroid/net/ConnectivityManager;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "NEW_PHONE_WIZARDED"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2438
    .local v2, isNewPhoneWizarded:I
    if-nez v2, :cond_2

    .line 2441
    :goto_1
    return v3

    .line 2427
    .end local v2           #isNewPhoneWizarded:I
    .restart local v0       #cmgr:Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2428
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "cmgr == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2432
    .end local v0           #cmgr:Landroid/net/ConnectivityManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->checkAndSetDefaultDataConnectionSim()V

    goto :goto_0

    .restart local v2       #isNewPhoneWizarded:I
    :cond_2
    move v3, v4

    .line 2441
    goto :goto_1
.end method

.method private setDefaultDataConnectionSim()V
    .locals 9

    .prologue
    .line 2342
    const-wide/16 v0, 0x0

    .line 2343
    .local v0, defaultConnectionSimid:J
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 2344
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 2345
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v7, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 2361
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gprs_connection_sim_setting"

    invoke-static {v7, v8, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2362
    return-void

    .line 2346
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 2348
    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2349
    .local v3, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v6

    .line 2350
    .local v6, slotid:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    .line 2351
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 2352
    .local v4, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v4, :cond_0

    .line 2353
    iget-wide v0, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2354
    .end local v3           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v6           #slotid:I
    :catch_0
    move-exception v2

    .line 2355
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "KeyguardUpdateMonitor"

    const-string v8, "setDefaultDataConnectionSim error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2358
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DM_IsLocked()Z
    .locals 1

    .prologue
    .line 2070
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->KEYGUARD_DM_LOCKED:Z

    return v0
.end method

.method public InitView(Landroid/view/View;Ljava/lang/String;)V
    .locals 29
    .parameter "v"
    .parameter "s"

    .prologue
    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "voice_call_sim_setting"

    const-wide/16 v27, -0x5

    invoke-static/range {v25 .. v28}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v21

    .line 2186
    .local v21, voicecallSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "sms_sim_setting"

    const-wide/16 v27, -0x5

    invoke-static/range {v25 .. v28}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 2188
    .local v13, smsSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "gprs_connection_sim_setting"

    const-wide/16 v27, -0x5

    invoke-static/range {v25 .. v28}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 2190
    .local v6, dateSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "video_call_sim_setting"

    const-wide/16 v27, -0x5

    invoke-static/range {v25 .. v28}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 2192
    .local v18, videoSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "phone"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 2193
    .local v17, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v25

    if-eqz v25, :cond_2

    const/4 v10, 0x1

    .line 2194
    .local v10, isVoiceCapable:Z
    :goto_0
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v25

    if-eqz v25, :cond_3

    const/4 v9, 0x1

    .line 2195
    .local v9, isSmsCapable:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    const-string v25, "KeyguardUpdateMonitor"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "InitView, isVoiceCapable="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " isSmsCapable "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :cond_0
    const-string v25, "KeyguardUpdateMonitor"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "voicecallSlot="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",smsSlot="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",dateSlot="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", videoSlot="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    const v25, 0x4020057

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 2204
    const v25, 0x402005a

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2205
    .local v8, firstName:Landroid/widget/TextView;
    const v25, 0x402005d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2209
    .local v11, secondName:Landroid/widget/TextView;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 2210
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2211
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->addNameForSIMDetectDialog(Landroid/widget/TextView;I)V

    .line 2220
    :goto_2
    const v25, 0x402005f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 2224
    .local v20, voicecall:Landroid/widget/TextView;
    if-eqz v10, :cond_6

    .line 2225
    const v25, 0x40b0034

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2232
    :goto_3
    const v25, 0x4020061

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2233
    .local v12, sms:Landroid/widget/TextView;
    if-eqz v9, :cond_7

    .line 2234
    const v25, 0x40b0035

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2239
    :goto_4
    const v25, 0x4020063

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2240
    .local v3, data:Landroid/widget/TextView;
    const v25, 0x40b0036

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2242
    const v25, 0x4020060

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 2246
    .local v23, voicecalloptr:Landroid/widget/TextView;
    if-eqz v10, :cond_9

    .line 2247
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2248
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v24

    .line 2249
    .local v24, voicecalloptrname:Ljava/lang/String;
    if-nez v24, :cond_8

    .line 2250
    const v25, 0x40b0023

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2267
    .end local v24           #voicecalloptrname:Ljava/lang/String;
    :goto_5
    const v25, 0x4020062

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2268
    .local v15, smsoptr:Landroid/widget/TextView;
    if-eqz v9, :cond_b

    .line 2269
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2270
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v16

    .line 2271
    .local v16, smsoptrname:Ljava/lang/String;
    if-nez v16, :cond_a

    .line 2272
    const v25, 0x40b0023

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2280
    .end local v16           #smsoptrname:Ljava/lang/String;
    :goto_6
    const v25, 0x4020064

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2281
    .local v5, dataoptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2282
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v4

    .line 2283
    .local v4, dataoptnamestring:Ljava/lang/String;
    if-nez v4, :cond_c

    .line 2284
    const v25, 0x40b0023

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2289
    .end local v3           #data:Landroid/widget/TextView;
    .end local v4           #dataoptnamestring:Ljava/lang/String;
    .end local v5           #dataoptr:Landroid/widget/TextView;
    .end local v8           #firstName:Landroid/widget/TextView;
    .end local v11           #secondName:Landroid/widget/TextView;
    .end local v12           #sms:Landroid/widget/TextView;
    .end local v15           #smsoptr:Landroid/widget/TextView;
    .end local v20           #voicecall:Landroid/widget/TextView;
    .end local v23           #voicecalloptr:Landroid/widget/TextView;
    :cond_1
    :goto_7
    return-void

    .line 2193
    .end local v9           #isSmsCapable:Z
    .end local v10           #isVoiceCapable:Z
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2194
    .restart local v10       #isVoiceCapable:Z
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2212
    .restart local v8       #firstName:Landroid/widget/TextView;
    .restart local v9       #isSmsCapable:Z
    .restart local v11       #secondName:Landroid/widget/TextView;
    :cond_4
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 2213
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2214
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->addNameForSIMDetectDialog(Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 2216
    :cond_5
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->addNameForSIMDetectDialog(Landroid/widget/TextView;I)V

    .line 2217
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->addNameForSIMDetectDialog(Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 2228
    .restart local v20       #voicecall:Landroid/widget/TextView;
    :cond_6
    const/16 v25, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2236
    .restart local v12       #sms:Landroid/widget/TextView;
    :cond_7
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2252
    .restart local v3       #data:Landroid/widget/TextView;
    .restart local v23       #voicecalloptr:Landroid/widget/TextView;
    .restart local v24       #voicecalloptrname:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2263
    .end local v24           #voicecalloptrname:Ljava/lang/String;
    :cond_9
    const/16 v25, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 2274
    .restart local v15       #smsoptr:Landroid/widget/TextView;
    .restart local v16       #smsoptrname:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2277
    .end local v16           #smsoptrname:Ljava/lang/String;
    :cond_b
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 2286
    .restart local v4       #dataoptnamestring:Ljava/lang/String;
    .restart local v5       #dataoptr:Landroid/widget/TextView;
    :cond_c
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method public IsSIMInserted(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 2308
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2310
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 2317
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "Get sim insert status failure!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2317
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
    .line 2292
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2293
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;

    move-result-object v0

    .line 2294
    .local v0, optrname:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2295
    const v1, 0x40b0023

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2299
    :goto_0
    return-void

    .line 2297
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public clearFailedAttempts()V
    .locals 1

    .prologue
    .line 2013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 2014
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    return v0
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 2009
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getLastSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 3
    .parameter "simId"

    .prologue
    .line 1916
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1917
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

    .line 1918
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCard$State;

    .line 1921
    :goto_0
    return-object v0

    .line 1920
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

    .line 1921
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getMissedCall()I
    .locals 1

    .prologue
    .line 2041
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCall:I

    return v0
.end method

.method public getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 2116
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 2117
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

    .line 2118
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v3, p1

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2119
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_1

    .line 2120
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "getOptrDrawableBySlotId, return null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2123
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
    .line 2169
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 2170
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

    .line 2171
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2172
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 2173
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrDrawableBySlotId, return null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    const/4 v1, 0x0

    .line 2176
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

    .line 2179
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

    .line 2094
    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    .line 2095
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

    .line 2096
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2097
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 2098
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/4 v1, 0x0

    .line 2111
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 2101
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

    .line 2102
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 2104
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    .line 2105
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40b002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2106
    :cond_2
    const-wide/16 v1, -0x2

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    .line 2107
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40b002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2108
    :cond_3
    cmp-long v1, v3, p1

    if-nez v1, :cond_4

    .line 2109
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40b0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2111
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40b0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrNameBySlot(J)Ljava/lang/String;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 2130
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 2131
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

    .line 2132
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2133
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 2134
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const/4 v1, 0x0

    .line 2138
    :goto_0
    return-object v1

    .line 2137
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

    .line 2138
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 2141
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
    const v4, 0x40b0032

    .line 2147
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_3

    .line 2148
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

    .line 2149
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2150
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2151
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    const-wide/16 v1, 0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 2153
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

    .line 2162
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 2155
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

    .line 2158
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

    .line 2159
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 2162
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40b0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPINDismissFlag(IZ)Z
    .locals 5
    .parameter "slotId"
    .parameter "PINFlag"

    .prologue
    .line 1865
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

    .line 1866
    const/4 v0, 0x1

    .line 1867
    .local v0, bitSet:I
    const/4 v1, 0x0

    .line 1868
    .local v1, result:I
    if-eqz p2, :cond_0

    .line 1869
    shl-int v1, v0, p1

    .line 1873
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1871
    :cond_0
    add-int/lit8 v2, p1, 0x2

    shl-int v1, v0, v2

    goto :goto_0

    .line 1873
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 2038
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getSearchingFlag(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 947
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 949
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    .line 951
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearching:Z

    goto :goto_0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 3
    .parameter "simId"

    .prologue
    .line 1906
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1907
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

    .line 1908
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 1911
    :goto_0
    return-object v0

    .line 1910
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

    .line 1911
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simId"

    .prologue
    .line 1984
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    .line 1987
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simId"

    .prologue
    .line 1992
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    .line 1995
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getWallpaperStatus()Z
    .locals 1

    .prologue
    .line 2045
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return v0
.end method

.method public getWallpaperUpdate()Z
    .locals 1

    .prologue
    .line 1580
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    return v0
.end method

.method public handleDMKeyguardUpdate()V
    .locals 4

    .prologue
    .line 1588
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

    .line 1590
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onDMKeyguardUpdate()V

    .line 1590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1593
    :cond_0
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 3

    .prologue
    .line 1159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onDeviceProvisioned()V

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1162
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 1164
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 1167
    :cond_1
    return-void
.end method

.method public handleGprsTypePickSim2()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1497
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleGprsTypePickSim2"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x40b0013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x4040001

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$9;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    .line 1556
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1557
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_sf_slowBlur#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1559
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1564
    return-void
.end method

.method protected handleLockScreenUpdateLayout(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 957
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onLockScreenUpdate(I)V

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_0
    return-void
.end method

.method public handleMissedCall(I)V
    .locals 2
    .parameter "missedCall"

    .prologue
    .line 1567
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onMissedCallChanged(I)V

    .line 1567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1570
    :cond_0
    return-void
.end method

.method public handleMultithemLockscreenEnalbe(Ljava/lang/Integer;)V
    .locals 8
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1113
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

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1115
    invoke-static {}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setWallpaperChange()V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v1, :cond_2

    .line 1118
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/LockScreenElement;->clearElement()V

    .line 1119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 1121
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 1122
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 1123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1124
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1125
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1126
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 1127
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    const-wide/16 v3, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1129
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_lock_type"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1134
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1135
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 1136
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_lock_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1140
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1141
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1142
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 1143
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    invoke-static {v1, v2, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 1146
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1148
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1149
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 1150
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    invoke-static {v1, v2, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 1170
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

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1174
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 1175
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1177
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 1178
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1180
    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1181
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1187
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1188
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;->onPhoneStateChanged(I)V

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1182
    .end local v0           #i:I
    :cond_5
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1183
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1184
    :cond_6
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1185
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1190
    .restart local v0       #i:I
    :cond_7
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 1193
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

    .line 1194
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    .line 1195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 1195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1198
    :cond_1
    return-void
.end method

.method public handleStatubarExpandEnalbe(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1156
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    .line 1157
    return-void
.end method

.method public handleWallpaperSet()V
    .locals 2

    .prologue
    .line 1573
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    .line 1574
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1575
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onWallpaperSetComplete()V

    .line 1574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1577
    :cond_0
    return-void
.end method

.method public holdPersistData(Lcom/baidu/themeanimation/element/LockScreenElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 2334
    return-void
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 2021
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharged()Z
    .locals 2

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceCharging()Z
    .locals 2

    .prologue
    .line 1963
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
    .line 1955
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 2005
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method isGMSRunning()Z
    .locals 6

    .prologue
    .line 888
    const/4 v2, 0x0

    .line 889
    .local v2, running:Z
    const/4 v1, 0x1

    .line 890
    .local v1, isExist:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    .line 891
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.setupwizard"

    const-string v5, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    .line 895
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
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

    .line 903
    :cond_0
    const/4 v2, 0x1

    .line 905
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

    .line 906
    return v2

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardBypassEnabled()Z
    .locals 1

    .prologue
    .line 1951
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyguardBypassEnabled:Z

    return v0
.end method

.method public isPhoneAppReady()Z
    .locals 8

    .prologue
    .line 2049
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2051
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 2052
    .local v3, ready:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2053
    .local v5, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v5, :cond_0

    .line 2054
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "runningAppInfo == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 2063
    .end local v3           #ready:Z
    .local v4, ready:I
    :goto_0
    return v4

    .line 2057
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

    .line 2058
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "com.android.phone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2059
    const/4 v3, 0x1

    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    move v4, v3

    .line 2063
    .restart local v4       #ready:I
    goto :goto_0
.end method

.method public isStatusBarExpandEnbale()Z
    .locals 1

    .prologue
    .line 2324
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    return v0
.end method

.method public ismIsPasswordLock()Z
    .locals 1

    .prologue
    .line 2031
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    return v0
.end method

.method public ismMultithemLockscreen()Z
    .locals 1

    .prologue
    .line 2321
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    return v0
.end method

.method public ismShowedVoicePrint()Z
    .locals 1

    .prologue
    .line 2024
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    return v0
.end method

.method public registerDeviceInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1802
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onClockVisibilityChanged()V

    .line 1805
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;->onDeviceProvisioned()V

    .line 1809
    :cond_0
    :goto_0
    return-void

    .line 1807
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
    .line 1821
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 1826
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 1827
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 1829
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1832
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1837
    :cond_0
    :goto_0
    return-void

    .line 1835
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
    .line 1791
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;->onPhoneStateChanged(I)V

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1796
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
    .line 1812
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    .line 1813
    return-void
.end method

.method public registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1882
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1886
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1891
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
    .line 1844
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    .line 1845
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1688
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1689
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1690
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1691
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1896
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1897
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1898
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 1

    .prologue
    .line 2017
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 2018
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 2

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 1933
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1937
    :cond_0
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 2
    .parameter "simId"

    .prologue
    .line 1941
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1942
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 1943
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 1948
    :cond_0
    :goto_0
    return-void

    .line 1945
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 1946
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public reportWallpaperSet()V
    .locals 1

    .prologue
    .line 1584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    .line 1585
    return-void
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugFlag"

    .prologue
    .line 2337
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z

    .line 2338
    return-void
.end method

.method public setPINDismiss(IZZ)V
    .locals 3
    .parameter "slotId"
    .parameter "PINFlag"
    .parameter "flag"

    .prologue
    .line 1855
    const/4 v0, 0x1

    .line 1856
    .local v0, bitSet:I
    if-eqz p2, :cond_0

    .end local p1
    :goto_0
    shl-int/2addr v0, p1

    .line 1857
    if-eqz p3, :cond_1

    .line 1858
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    .line 1862
    :goto_1
    return-void

    .line 1856
    .restart local p1
    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 1860
    .end local p1
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I

    goto :goto_1
.end method

.method public setmIsPasswordLock(Z)V
    .locals 0
    .parameter "mIsPasswordLock"

    .prologue
    .line 2035
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    .line 2036
    return-void
.end method

.method public setmShowedVoicePrint(Z)V
    .locals 0
    .parameter "mShowedVoicePrint"

    .prologue
    .line 2028
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    .line 2029
    return-void
.end method

.method public shouldShowBatteryInfo()Z
    .locals 1

    .prologue
    .line 1972
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
    .line 1848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;

    .line 1849
    return-void
.end method

.method updateResources()V
    .locals 8

    .prologue
    const v7, 0x40b0028

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 910
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    .line 911
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    if-eqz v3, :cond_3

    .line 912
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "updateResources, default sim removed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    const v4, 0x40b0027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 914
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 915
    .local v1, nagbtn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 918
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 919
    .local v2, posbtn:Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 920
    const v3, #string@ok#t

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 922
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x40b002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->InitView(Landroid/view/View;Ljava/lang/String;)V

    .line 944
    .end local v0           #msg:Ljava/lang/String;
    .end local v1           #nagbtn:Landroid/widget/Button;
    .end local v2           #posbtn:Landroid/widget/Button;
    :cond_2
    :goto_0
    return-void

    .line 924
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMRemoved:Z

    if-nez v3, :cond_2

    .line 925
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "updateResources, new sim inserted"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    const v4, 0x40b002b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 927
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 928
    .restart local v1       #nagbtn:Landroid/widget/Button;
    if-eqz v1, :cond_4

    .line 929
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 931
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 932
    .restart local v2       #posbtn:Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 933
    const v3, 0x40b0029

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 935
    :cond_5
    const/4 v0, 0x0

    .line 936
    .restart local v0       #msg:Ljava/lang/String;
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCardTotal:I

    if-ne v3, v4, :cond_6

    .line 937
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x40b002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 941
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->InitView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x40b002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
