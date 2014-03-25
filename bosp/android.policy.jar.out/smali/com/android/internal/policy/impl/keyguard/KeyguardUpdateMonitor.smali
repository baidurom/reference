.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$NewSimDialogCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SequenceDialog;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    }
.end annotation


# static fields
.field private static final CLEAR_NEW_EVENT_VIEW_INTENT:Ljava/lang/String; = "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

.field private static DEBUG:Z = false

.field private static DEBUG_SIM_STATES:Z = false

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final GMS_SETUP_COMPONENT:Ljava/lang/String; = "com.google.android.setupwizard.SetupWizardActivity"

.field private static final GMS_SETUP_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field static final LOW_BATTERY_THRESHOLD:I = 0x10

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BOOTUP_MODE_PICK:I = 0x3f3

.field protected static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_CONFIGURATION_CHANGED:I = 0x3ed

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DOWNLOAD_CALIBRATION_DATA_UPDATE:I = 0x3f5

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_HOTSPOT_DATA:I = 0x141

.field private static final MSG_KEYGUARD_RESET_DISMISS:I = 0x3ef

.field private static final MSG_KEYGUARD_SIM_NAME_UPDATE:I = 0x3ee

.field private static final MSG_KEYGUARD_UPDATE_LAYOUT:I = 0x3f0

.field private static final MSG_KEYGUARD_VISIBILITY_CHANGED:I = 0x138

.field private static final MSG_MODEM_RESET:I = 0x3f1

.field private static final MSG_MULTITHEME_LOCKSREEN_ENABLE:I = 0x142

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_PRE_3G_SWITCH:I = 0x3f2

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIMINFO_CHANGED:I = 0x3ec

.field private static final MSG_SIM_DETECTED:I = 0x3ea

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_STATUSBAR_LOCKSREEN_ENABLE:I = 0x1f5

.field private static final MSG_SYSTEM_STATE:I = 0x3f4

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_REMOVED:I = 0x137

.field private static final MSG_USER_SWITCHED:I = 0x136

.field private static final PIN_PUK_RESET:I = 0x0

.field private static final SIM_1_PIN_DISMISSED:I = 0x1

.field private static final SIM_1_PIN_PUK_MASK:I = 0x5

.field private static final SIM_1_PUK_DISMISSED:I = 0x4

.field private static final SIM_2_PIN_DISMISSED:I = 0x2

.field private static final SIM_2_PIN_PUK_MASK:I = 0xa

.field private static final SIM_2_PUK_DISMISSED:I = 0x8

.field private static SIM_DETECT_NEW:Ljava/lang/String; = null

.field private static SIM_DETECT_REMOVE:Ljava/lang/String; = null

.field private static SIM_DETECT_SWAP:Ljava/lang/String; = null

.field private static final SYSTEM_STATE_BOOTUP:I = 0x1

.field private static final SYSTEM_STATE_SHUTDOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field public static sDualSimSetting:I

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private firstbootflag:Z

.field private mAlternateUnlockEnabled:Z

.field private mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalibrationData:Z

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

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCtaDialog:Landroid/app/AlertDialog;

.field private mDeviceProvisioned:Z

.field private mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsPasswordLock:Z

.field private mKeyguardDMLocked:Z

.field private mKeyguardIsVisible:Z

.field public mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

.field private mMultithemLockscreen:Z

.field mNetSearching:Z

.field mNetSearchingGemini:Z

.field private mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

.field private mPinPukDismissFlag:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPromptView:Landroid/view/View;

.field private mQueryBaseTime:J

.field private mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

.field private mRingMode:I

.field private mSIMResetModem:Z

.field private mShowWhichKeywords:I

.field private mShowedVoicePrint:Z

.field private mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimCardChangedDialog:Landroid/app/AlertDialog;

.field private mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

.field private mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mStatusBarExpand:Z

.field private mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonyPlmnGemini:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;

.field private mTelephonySpnGemini:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    .line 110
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    .line 1353
    const-string v0, "NEW"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    .line 1354
    const-string v0, "REMOVE"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_REMOVE:Ljava/lang/String;

    .line 1355
    const-string v0, "SWAP"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_SWAP:Ljava/lang/String;

    .line 1363
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sDualSimSetting:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    .line 139
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 140
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 141
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowWhichKeywords:I

    .line 142
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    .line 143
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockReady:Z

    .line 151
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 170
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 171
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 177
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 184
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->firstbootflag:Z

    .line 186
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 281
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1326
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    .line 1329
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1332
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1333
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1349
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    .line 1350
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    .line 1351
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1420
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    .line 1421
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    .line 1433
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    .line 1437
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    .line 618
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 621
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    .line 624
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmCheckLocked()V

    .line 627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initPhoneStateListener()V

    .line 629
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "device_provisioned"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 632
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDeviceProvisioned is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v3, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 639
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "statusbar_expand_lockscreen"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    .line 645
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v6, 0x64

    invoke-direct {v3, v4, v6, v5, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 646
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 648
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 651
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    .line 656
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 657
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    const-string v3, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v3, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v3, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v3, "android.intent.action.RADIO_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v3, "android.provider.Telephony.DUAL_SIM_MODE_SELECT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v3, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v3, "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v3, "com.baidu.lockscreen.syncdone"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v3, "theme.lockscreen.action.apply_theme"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v3, "theme.lockscreen.action.reduce_theme"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v3, "com.baidu.lockscreen.action.reduce_theme_settings"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v3, "com.baidu.lockscreen.statusbar.expand"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 699
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 700
    .local v0, bootCompleteFilter:Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 701
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 704
    const-string v3, "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 708
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_2
    return-void

    .end local v0           #bootCompleteFilter:Landroid/content/IntentFilter;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_2
    move v3, v5

    .line 629
    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 639
    goto/16 :goto_1

    .line 719
    .restart local v0       #bootCompleteFilter:Landroid/content/IntentFilter;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 721
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMNameUpdate(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleRadioStateChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handle3GSwitchEvent()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSystemStateChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDownloadCalibrationDataUpdate()V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSIMResetModem:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSIMResetModem:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->prehandleSIMCardChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->firstbootflag:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBootupModePick()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMInfoChanged(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    return p1
.end method

.method static synthetic access$872(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMCardChanged()V

    return-void
.end method

.method private checkAndSetDefaultDataConnectionSim()V
    .locals 21

    .prologue
    .line 2735
    const-wide/16 v5, 0x0

    .line 2737
    .local v5, defaultConnectionSimid:J
    const/4 v7, -0x4

    .line 2738
    .local v7, defaultConnectionSlotId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "gprs_connection_sim_setting"

    const-wide/16 v19, 0x0

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 2742
    .local v13, prevSimId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 2743
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2744
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v17, v0

    cmp-long v17, v13, v17

    if-nez v17, :cond_1

    .line 2784
    :cond_0
    :goto_0
    return-void

    .line 2748
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v17

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 2749
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v17

    iget v7, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 2780
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "gprs_connection_sim_setting"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "gprs_connection_setting"

    const/16 v17, -0x4

    move/from16 v0, v17

    if-ne v7, v0, :cond_8

    const-wide/16 v17, -0x4

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 2750
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2751
    const/4 v4, 0x0

    .line 2752
    .local v4, bPrevSimExist:Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/provider/Telephony$SIMInfo;

    .line 2753
    .local v15, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget-wide v0, v15, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v13

    if-nez v17, :cond_4

    .line 2754
    const/4 v4, 0x1

    .line 2758
    .end local v15           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_5
    if-nez v4, :cond_0

    .line 2763
    :try_start_0
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 2765
    .local v10, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v16

    .line 2766
    .local v16, slotid:I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2767
    const/16 v16, 0x0

    .line 2770
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v11

    .line 2771
    .local v11, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v11, :cond_7

    .line 2772
    iget-wide v5, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2774
    :cond_7
    move/from16 v7, v16

    goto/16 :goto_1

    .line 2775
    .end local v10           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v11           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v16           #slotid:I
    :catch_0
    move-exception v8

    .line 2776
    .local v8, e:Ljava/lang/Exception;
    const-string v17, "KeyguardUpdateMonitor"

    const-string v18, "setDefaultDataConnectionSim error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2782
    .end local v4           #bPrevSimExist:Z
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_8
    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    goto :goto_2
.end method

.method private dmCheckLocked()V
    .locals 7

    .prologue
    .line 1524
    :try_start_0
    const-string v4, "DMAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1525
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1526
    invoke-static {v1}, Lcom/mediatek/common/dm/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v0

    .line 1527
    .local v0, agent:Lcom/mediatek/common/dm/DMAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DMAgent;->isLockFlagSet()Z

    move-result v3

    .line 1528
    .local v3, flag:Z
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dmCheckLocked, the lock flag is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setDmLocked(Z)V

    .line 1536
    .end local v0           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #flag:Z
    :goto_0
    return-void

    .line 1531
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_0
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "dmCheckLocked, DMAgent doesn\'t exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1533
    .end local v1           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1534
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "get DM status failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1104
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
    .line 611
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 614
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private getMultithemLockscreen()Z
    .locals 4

    .prologue
    .line 2695
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

.method private getSimNumber(I)I
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 1995
    const/4 v0, 0x0

    .line 1996
    .local v0, n:I
    :goto_0
    if-eqz p1, :cond_1

    .line 1997
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1998
    add-int/lit8 v0, v0, 0x1

    .line 2000
    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2002
    :cond_1
    return v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1090
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1091
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "EXTRA_SHOW_PLMN =  TRUE "

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1096
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1093
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1095
    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "EXTRA_SHOW_PLMN = FALSE  "

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1112
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1118
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
    .line 2222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    .line 2223
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 941
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "handleBatteryUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 943
    .local v0, batteryUpdateInteresting:Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 944
    if-eqz v0, :cond_2

    .line 945
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 946
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 947
    .local v1, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_1

    .line 948
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 945
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    .end local v1           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private handleBootupModePick()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2273
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2274
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleBootupModePick"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 2279
    .local v0, simname:[Ljava/lang/String;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlotForCTA(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2280
    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlotForCTA(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2281
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x2050036

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    .line 2352
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2353
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #bool@config_sf_slowBlur#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2354
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 2360
    :cond_1
    sput v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sDualSimSetting:I

    .line 2361
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2362
    return-void
.end method

.method private handleCarrierInfoUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V
    .locals 5
    .parameter "spnUpdate"

    .prologue
    .line 958
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 962
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 963
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 964
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 965
    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    if-nez v2, :cond_2

    .line 966
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 961
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 968
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 971
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 975
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_4
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 4

    .prologue
    .line 1028
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleClockVisibilityChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1030
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1031
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1032
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1029
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1035
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleDownloadCalibrationDataUpdate()V
    .locals 4

    .prologue
    .line 2007
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleDownloadCalibrationDataUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2009
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 2010
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 2011
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 2008
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2014
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .locals 6
    .parameter "showing"

    .prologue
    const/4 v2, 0x1

    .line 1041
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyguardVisibilityChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    if-ne p1, v2, :cond_2

    .line 1043
    .local v2, isShowing:Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 1044
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1045
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1046
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1047
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 1044
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1042
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    .end local v2           #isShowing:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1050
    .restart local v1       #i:I
    .restart local v2       #isShowing:Z
    :cond_3
    return-void
.end method

.method private handleRadioStateChanged(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2226
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

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSim2State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 2229
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 2230
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_3

    .line 2232
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_2

    .line 2233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    .line 2241
    :cond_2
    :goto_0
    return-void

    .line 2235
    :cond_3
    if-ne v4, p1, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_2

    .line 2237
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_2

    .line 2238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    goto :goto_0
.end method

.method private handleSIMCardChanged()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1933
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->firstbootflag:Z

    if-eqz v5, :cond_0

    .line 1934
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->firstbootflag:Z

    .line 1936
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportDialogClose()V

    .line 1992
    :goto_0
    return-void

    .line 1941
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSimDetectStatus()Ljava/lang/String;

    move-result-object v4

    .line 1942
    .local v4, simDetectStatus:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1943
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newphonewizard has been done? NEW_PHONE_WIZARDED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "NEW_PHONE_WIZARDED"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "NEW_PHONE_WIZARDED"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1945
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 1946
    .local v3, sil:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v5, 0x2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1947
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "two sim cards inserted, start com.baidu.dual.card.setting.wizard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.baidu.dual.card.setting.wizard"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1949
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1950
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1951
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1952
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "StartActivity com.baidu.dual.card.setting.wizard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #sil:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportDialogClose()V

    goto :goto_0

    .line 1962
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1963
    .local v1, factory:Landroid/view/LayoutInflater;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1964
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1965
    const v5, 0x205009b

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1974
    const v5, 0x20500ab

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1975
    const v5, 0x2050096

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1976
    const v5, 0x207001d

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1978
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimChangedPrompt()V

    .line 1979
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimSettingsView()V

    .line 1980
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1982
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    .line 1983
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1984
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1991
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private handleSIMInfoChanged(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1921
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1922
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1923
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1924
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1925
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSIMInfoChanged(I)V

    .line 1922
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1929
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private handleSIMNameUpdate(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1909
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1910
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1911
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1912
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1913
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenUpdate(I)V

    .line 1910
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1916
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->updateResources()V

    .line 1918
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 7
    .parameter "simArgs"

    .prologue
    .line 981
    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 983
    .local v2, state:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 984
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimStateChange: intentValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state resolved to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oldssimtate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oldsim2state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    if-nez v4, :cond_3

    .line 990
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 991
    .local v3, tempState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 997
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_7

    if-eq v2, v3, :cond_7

    .line 998
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v4, :cond_1

    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatching state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_1
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    if-nez v4, :cond_4

    .line 1000
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1001
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimStateChange: mSimState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1007
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1008
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1009
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2

    .line 1010
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1007
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 993
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    .end local v3           #tempState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 994
    .restart local v3       #tempState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1003
    :cond_4
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1004
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimStateChange: mSim2State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1014
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1015
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1016
    .restart local v0       #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_6

    .line 1017
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1014
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1022
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_7
    return-void
.end method

.method private handleSystemStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    if-nez v0, :cond_1

    .line 2246
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2247
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "mSystemStateCallback is null, skipped!"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    :cond_0
    :goto_0
    return-void

    .line 2252
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2262
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2263
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "received unknown system state change event"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2254
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;->onSysBootup()V

    goto :goto_0

    .line 2258
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;->onSysShutdown()V

    goto :goto_0

    .line 2252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTimeUpdate()V
    .locals 4

    .prologue
    .line 928
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 930
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 931
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 932
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 929
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 935
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private initPhoneStateListener()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 2154
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2178
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    .line 2201
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2203
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2204
    .local v2, t:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2205
    .local v1, notifyNow:Ljava/lang/Boolean;
    const-string v5, "telephony.registry"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    .line 2206
    .local v3, tr1:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v5, "KeyguardUpdateMonitor"

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 2207
    const-string v5, "telephony.registry2"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v4

    .line 2208
    .local v4, tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v5, "KeyguardUpdateMonitor"

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2218
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    .end local v2           #t:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #tr1:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v4           #tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    :goto_1
    return-void

    .line 2204
    .restart local v2       #t:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2209
    .end local v2           #t:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2210
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "Fail to listen GEMINI state"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2211
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2212
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "The registry is null"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2215
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v7, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1
.end method

.method private initSimChangedPrompt()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    .line 1625
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getNewSimSlot()I

    move-result v3

    .line 1626
    .local v3, newSimSlot:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSimDetectStatus()Ljava/lang/String;

    move-result-object v5

    .line 1628
    .local v5, simDetectStatus:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1629
    .local v1, msg:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimNumber(I)I

    move-result v2

    .line 1630
    .local v2, newSimNumber:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v8, 0x2100078

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1631
    .local v0, firstName:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v8, 0x2100079

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1633
    .local v4, secondName:Landroid/widget/TextView;
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1635
    if-ne v2, v9, :cond_1

    .line 1636
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1637
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050097

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1642
    :goto_0
    const/4 v6, 0x0

    .line 1643
    .local v6, simId:I
    :goto_1
    if-eqz v3, :cond_5

    .line 1644
    add-int/lit8 v6, v6, 0x1

    .line 1645
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_0

    .line 1646
    if-ne v6, v9, :cond_2

    .line 1647
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameBySlot(Landroid/widget/TextView;I)V

    .line 1656
    :cond_0
    :goto_2
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1639
    .end local v6           #simId:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050098

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1648
    .restart local v6       #simId:I
    :cond_2
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1649
    if-ne v2, v9, :cond_3

    .line 1650
    invoke-virtual {p0, v0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameBySlot(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 1652
    :cond_3
    invoke-virtual {p0, v4, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameBySlot(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 1658
    .end local v6           #simId:I
    :cond_4
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_REMOVE:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1659
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050099

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1660
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1661
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1670
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v8, 0x2100077

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    return-void

    .line 1662
    :cond_6
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_SWAP:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1663
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205009a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1664
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1665
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1667
    :cond_7
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown SIMCard Changed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private initSimSettingsView()V
    .locals 31

    .prologue
    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "voice_call_sim_setting"

    const-wide/16 v29, -0x5

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v24

    .line 1675
    .local v24, voiceCallSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "sms_sim_setting"

    const-wide/16 v29, -0x5

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1677
    .local v13, smsSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "gprs_connection_sim_setting"

    const-wide/16 v29, -0x5

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1679
    .local v6, dataSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "video_call_sim_setting"

    const-wide/16 v29, -0x5

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    .line 1681
    .local v19, videoCallSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "phone"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 1682
    .local v15, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v27

    if-eqz v27, :cond_1

    const/16 v26, 0x1

    .line 1683
    .local v26, voiceCapable:Z
    :goto_0
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v27

    if-eqz v27, :cond_2

    const/4 v10, 0x1

    .line 1684
    .local v10, smsCapable:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSIMCount()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    const/4 v8, 0x1

    .line 1686
    .local v8, multiSim:Z
    :goto_2
    sget-boolean v27, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v27, :cond_0

    .line 1687
    const-string v27, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initSimSettingsView, isVoiceCapable="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", isSmsCapabl="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", voicecallSlot="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", smsSlot="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", dataSlot="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", videoSlot="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", multiSim="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x210007c

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x20500b0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x210007e

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1700
    .local v21, voiceCall:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x210007f

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1701
    .local v23, voiceCallOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x210007d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1702
    .local v22, voiceCallItem:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowVoiceCall(ZZ)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1703
    const v27, 0x205009c

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1704
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameById(Landroid/widget/TextView;J)V

    .line 1709
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x2100081

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1710
    .local v16, videoCall:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x2100082

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1711
    .local v18, videoCallOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x2100080

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1712
    .local v17, videoCallItem:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowVideoCall(ZZ)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 1713
    const v27, 0x20500b1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1714
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameById(Landroid/widget/TextView;J)V

    .line 1719
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x2100084

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1720
    .local v9, sms:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x2100085

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1721
    .local v12, smsOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x2100083

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1722
    .local v11, smsItem:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowSms(ZZ)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 1723
    const v27, 0x205009d

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1724
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameById(Landroid/widget/TextView;J)V

    .line 1729
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x2100086

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1730
    .local v4, data:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x2100087

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1731
    .local v5, dataOptr:Landroid/widget/TextView;
    const v27, 0x205009e

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1732
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameById(Landroid/widget/TextView;J)V

    .line 1733
    return-void

    .line 1682
    .end local v4           #data:Landroid/widget/TextView;
    .end local v5           #dataOptr:Landroid/widget/TextView;
    .end local v8           #multiSim:Z
    .end local v9           #sms:Landroid/widget/TextView;
    .end local v10           #smsCapable:Z
    .end local v11           #smsItem:Landroid/view/View;
    .end local v12           #smsOptr:Landroid/widget/TextView;
    .end local v16           #videoCall:Landroid/widget/TextView;
    .end local v17           #videoCallItem:Landroid/view/View;
    .end local v18           #videoCallOptr:Landroid/widget/TextView;
    .end local v21           #voiceCall:Landroid/widget/TextView;
    .end local v22           #voiceCallItem:Landroid/view/View;
    .end local v23           #voiceCallOptr:Landroid/widget/TextView;
    .end local v26           #voiceCapable:Z
    :cond_1
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1683
    .restart local v26       #voiceCapable:Z
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1684
    .restart local v10       #smsCapable:Z
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1706
    .restart local v8       #multiSim:Z
    .restart local v21       #voiceCall:Landroid/widget/TextView;
    .restart local v22       #voiceCallItem:Landroid/view/View;
    .restart local v23       #voiceCallOptr:Landroid/widget/TextView;
    :cond_4
    const/16 v27, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1716
    .restart local v16       #videoCall:Landroid/widget/TextView;
    .restart local v17       #videoCallItem:Landroid/view/View;
    .restart local v18       #videoCallOptr:Landroid/widget/TextView;
    :cond_5
    const/16 v27, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1726
    .restart local v9       #sms:Landroid/widget/TextView;
    .restart local v11       #smsItem:Landroid/view/View;
    .restart local v12       #smsOptr:Landroid/widget/TextView;
    :cond_6
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private internetCallIsOn()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1747
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    .line 1748
    .local v1, isSupport:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_internet_call_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 1749
    .local v0, isOn:Z
    :goto_0
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1750
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internetCallIsOn, isSupport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1755
    :goto_1
    return v2

    .end local v0           #isOn:Z
    :cond_1
    move v0, v3

    .line 1748
    goto :goto_0

    .restart local v0       #isOn:Z
    :cond_2
    move v2, v3

    .line 1755
    goto :goto_1
.end method

.method public static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 1838
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1839
    .local v0, bootReason:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1841
    .local v1, ret:Z
    :goto_0
    return v1

    .line 1839
    .end local v1           #ret:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .parameter "old"
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1057
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 1058
    .local v0, nowPluggedIn:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 1059
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 1064
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 1082
    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    .line 1059
    goto :goto_0

    .line 1074
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1079
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_3
    move v3, v4

    .line 1082
    goto :goto_1
.end method

.method public static isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 1285
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

.method private isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1301
    move-object v0, p1

    .line 1302
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private isSimPinSecureGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)Z
    .locals 4
    .parameter "state"
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1309
    move-object v0, p1

    .line 1310
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    if-nez p2, :cond_4

    .line 1311
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    .line 1315
    :cond_3
    :goto_0
    return v1

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_5

    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_6

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_3

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method private prehandleSIMCardChanged()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2787
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "NEW_PHONE_FIRSTSTART"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2790
    .local v1, fisrtStartNewPhone:I
    if-nez v1, :cond_1

    .line 2791
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NEW_PHONE_FIRSTSTART"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2792
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setDefaultDataConnectionSim()V

    .line 2798
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2799
    .local v0, cmgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 2800
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 2817
    .end local v0           #cmgr:Landroid/net/ConnectivityManager;
    :goto_0
    return v2

    .line 2802
    .restart local v0       #cmgr:Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2803
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "cmgr == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2808
    .end local v0           #cmgr:Landroid/net/ConnectivityManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->checkAndSetDefaultDataConnectionSim()V

    move v2, v3

    .line 2817
    goto :goto_0
.end method

.method private sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1158
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1159
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1160
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1162
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1168
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1171
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1179
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1180
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSearchNetworkUpdate(IZ)V

    .line 1181
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSearchNetworkUpdate(IZ)V

    .line 1184
    :cond_0
    return-void

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1175
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1
.end method

.method private setDefaultDataConnectionSim()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 2707
    const-wide/16 v0, 0x0

    .line 2708
    .local v0, defaultConnectionSimid:J
    const/4 v2, -0x4

    .line 2709
    .local v2, defaultConnectionSlotId:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 2710
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 2711
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v8, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 2712
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    iget v2, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 2729
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gprs_connection_sim_setting"

    invoke-static {v8, v9, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2730
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gprs_connection_setting"

    const/4 v8, -0x4

    if-ne v2, v8, :cond_4

    const-wide/16 v8, -0x4

    :goto_1
    invoke-static {v10, v11, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2732
    return-void

    .line 2713
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 2715
    :try_start_0
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2716
    .local v4, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v7

    .line 2717
    .local v7, slotid:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x0

    .line 2718
    :cond_2
    move v2, v7

    .line 2719
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    .line 2720
    .local v5, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v5, :cond_0

    .line 2721
    iget-wide v0, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2722
    .end local v4           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v7           #slotid:I
    :catch_0
    move-exception v3

    .line 2723
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "KeyguardUpdateMonitor"

    const-string v9, "setDefaultDataConnectionSim error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2726
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2730
    :cond_4
    add-int/lit8 v8, v2, 0x1

    int-to-long v8, v8

    goto :goto_1
.end method

.method private shouldShowSms(ZZ)Z
    .locals 3
    .parameter "smsCapable"
    .parameter "multiSim"

    .prologue
    .line 1774
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1775
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowSms, smsCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", multiSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1779
    const/4 v0, 0x1

    .line 1781
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowVideoCall(ZZ)Z
    .locals 3
    .parameter "voiceCallCapable"
    .parameter "multiSim"

    .prologue
    .line 1760
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1761
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowVideoCall, video_SUPPORT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekVT3G324MSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 3G_SWITCH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekGemini3GSwitchSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", voiceCallCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "multiSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekVT3G324MSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekGemini3GSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1768
    const/4 v0, 0x1

    .line 1770
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowVoiceCall(ZZ)Z
    .locals 3
    .parameter "voiceCallCapable"
    .parameter "multiSim"

    .prologue
    .line 1736
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1737
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowVoiceCall, voiceCallCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", multiSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->internetCallIsOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1740
    :cond_1
    const/4 v0, 0x1

    .line 1742
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 774
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 787
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 793
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 795
    .local v0, provisioned:Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_1

    .line 796
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 797
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x134

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 801
    :cond_1
    return-void
.end method


# virtual methods
.method public addOptrNameById(Landroid/widget/TextView;J)V
    .locals 5
    .parameter "v"
    .parameter "simId"

    .prologue
    const/4 v4, 0x0

    .line 1798
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1799
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1801
    .local v1, simCardNamePadding:I
    invoke-virtual {p1, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1802
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v0

    .line 1803
    .local v0, optrname:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1804
    const v2, 0x20500aa

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1808
    :goto_0
    return-void

    .line 1806
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public addOptrNameBySlot(Landroid/widget/TextView;I)V
    .locals 5
    .parameter "v"
    .parameter "slot"

    .prologue
    const/4 v4, 0x0

    .line 1785
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1786
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1788
    .local v1, simCardNamePadding:I
    invoke-virtual {p1, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1789
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;

    move-result-object v0

    .line 1790
    .local v0, optrname:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1791
    const v2, 0x20500aa

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1795
    :goto_0
    return-void

    .line 1793
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public clearFailedUnlockAttempts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1244
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1245
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1246
    return-void
.end method

.method public dmIsLocked()Z
    .locals 1

    .prologue
    .line 1514
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    return v0
.end method

.method public getFailedUnlockAttempts()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 3
    .parameter "simId"

    .prologue
    .line 2100
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2101
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSim2LastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2105
    :goto_0
    return-object v0

    .line 2104
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    .line 1265
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

.method public getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 1562
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1563
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

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v3, p1

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1565
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_1

    .line 1566
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "getOptrDrawableBySlotId, return null"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 1569
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "slot"

    .prologue
    const-wide/16 v3, 0x0

    .line 1612
    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    .line 1613
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOptrDrawableBySlot, xxslot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2020100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1617
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1620
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getOptrNameById(J)Ljava/lang/String;
    .locals 5
    .parameter "simId"

    .prologue
    const-wide/16 v3, 0x0

    .line 1540
    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    .line 1541
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

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1543
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 1544
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    const/4 v1, 0x0

    .line 1557
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1547
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

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1550
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    .line 1551
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1552
    :cond_2
    const-wide/16 v1, -0x2

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    .line 1553
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1554
    :cond_3
    cmp-long v1, v3, p1

    if-nez v1, :cond_4

    .line 1555
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1557
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrNameBySlot(J)Ljava/lang/String;
    .locals 4
    .parameter "slot"

    .prologue
    .line 1576
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1577
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

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1579
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 1580
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const/4 v1, 0x0

    .line 1584
    :goto_0
    return-object v1

    .line 1583
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

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1587
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getOptrNameBySlotForCTA(J)Ljava/lang/String;
    .locals 5
    .parameter "slot"

    .prologue
    const v4, 0x2050093

    .line 1592
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_3

    .line 1593
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

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1595
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1596
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const-wide/16 v1, 0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 1598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

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

    .line 1607
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1600
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

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

    .line 1603
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

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1607
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPINDismissFlag(IZ)Z
    .locals 8
    .parameter "simId"
    .parameter "pinOrPuk"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2062
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPINDismissFlag, simId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pinOrPuk="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPinPukDismissFlag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    if-nez p1, :cond_0

    .line 2067
    const/4 v0, 0x1

    .line 2068
    .local v0, pinFlag:I
    const/4 v1, 0x4

    .line 2073
    .local v1, pukFlag:I
    :goto_0
    const/4 v2, 0x0

    .line 2074
    .local v2, result:Z
    if-eqz p2, :cond_2

    .line 2075
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_1

    move v2, v3

    .line 2079
    :goto_1
    return v2

    .line 2070
    .end local v0           #pinFlag:I
    .end local v1           #pukFlag:I
    .end local v2           #result:Z
    :cond_0
    const/4 v0, 0x2

    .line 2071
    .restart local v0       #pinFlag:I
    const/16 v1, 0x8

    .restart local v1       #pukFlag:I
    goto :goto_0

    .restart local v2       #result:Z
    :cond_1
    move v2, v4

    .line 2075
    goto :goto_1

    .line 2077
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_3

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1257
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getQueryBaseTime()J
    .locals 2

    .prologue
    .line 2657
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    return-wide v0
.end method

.method getRetryPukCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 2609
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2610
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2613
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSearchingFlag(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 1892
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1893
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    .line 1895
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    goto :goto_0
.end method

.method public getShowWhichKeywords()I
    .locals 1

    .prologue
    .line 2664
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowWhichKeywords:I

    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 3
    .parameter "simId"

    .prologue
    .line 2090
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2091
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSim2State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2095
    :goto_0
    return-object v0

    .line 2094
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simId"

    .prologue
    .line 2115
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    .line 2118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simId"

    .prologue
    .line 2123
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    .line 2126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected handleBootCompleted()V
    .locals 3

    .prologue
    .line 836
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 837
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 838
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 839
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 837
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    .prologue
    .line 807
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 808
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 809
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 807
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 813
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 4

    .prologue
    .line 869
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 870
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 871
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 869
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    .line 879
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 881
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 882
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 884
    :cond_2
    return-void
.end method

.method protected handleLockScreenUpdateLayout(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1900
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1901
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1902
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1903
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenUpdate(I)V

    .line 1900
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1906
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public handleMultithemLockscreenEnalbe(Ljava/lang/Integer;)V
    .locals 8
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 729
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

    .line 731
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 732
    invoke-static {}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setWallpaperChange()V

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v1, :cond_2

    .line 735
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/LockScreenElement;->clearElement()V

    .line 736
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 738
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 739
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 740
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 742
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 743
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 744
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    const-wide/16 v3, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 746
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_lock_type"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 751
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMultithemLockscreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 752
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    .line 753
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_lock_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 757
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 758
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 759
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 760
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    invoke-static {v1, v2, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 763
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 764
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 765
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 766
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 767
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    invoke-static {v1, v2, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "newState"

    .prologue
    .line 890
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePhoneStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 893
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 895
    :cond_1
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 896
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 902
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 903
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 904
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_3

    .line 905
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 902
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 897
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_4
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 898
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 899
    :cond_5
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 900
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 908
    .restart local v1       #i:I
    :cond_6
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 914
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingerModeChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 916
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 917
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 918
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 919
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 916
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method public handleStatubarExpandEnalbe(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 726
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    .line 727
    return-void
.end method

.method protected handleUserRemoved(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 857
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 858
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 859
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserRemoved(I)V

    .line 857
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 863
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserSwitched(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .parameter "userId"
    .parameter "reply"

    .prologue
    .line 819
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 820
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 821
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitched(I)V

    .line 819
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 827
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_1
    return-void

    .line 828
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public hasBootCompleted()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public holdPersistData(Lcom/baidu/themeanimation/element/LockScreenElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 2702
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 2703
    return-void
.end method

.method public isAlternateUnlockEnabled()Z
    .locals 1

    .prologue
    .line 1269
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharging()Z
    .locals 2

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isEncryptMode()Z
    .locals 2

    .prologue
    .line 2134
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2135
    .local v0, state:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isGMSRunning()Z
    .locals 6

    .prologue
    .line 1853
    const/4 v2, 0x0

    .line 1854
    .local v2, running:Z
    const/4 v1, 0x1

    .line 1855
    .local v1, isExist:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    .line 1856
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.setupwizard"

    const-string v5, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    .line 1859
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    :goto_0
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1867
    :cond_0
    const/4 v2, 0x1

    .line 1869
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

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    return v2

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardVisible()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return v0
.end method

.method public isPhoneAppReady()Z
    .locals 8

    .prologue
    .line 1495
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1497
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 1498
    .local v3, ready:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1499
    .local v5, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v5, :cond_0

    .line 1500
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "runningAppInfo == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1509
    .end local v3           #ready:Z
    .local v4, ready:I
    :goto_0
    return v4

    .line 1503
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

    .line 1504
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "com.android.phone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1505
    const/4 v3, 0x1

    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    move v4, v3

    .line 1509
    .restart local v4       #ready:I
    goto :goto_0
.end method

.method public isSIMInserted(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 1817
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1819
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 1826
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "Get sim insert status failure!"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1826
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSimLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1277
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1278
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLockedGemini(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLockedGemini(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1280
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSimLockedGemini(I)Z
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1483
    if-ne p1, v1, :cond_2

    .line 1484
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 1488
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSimPinSecure()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1292
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1293
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecureGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecureGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1295
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    goto :goto_0
.end method

.method public isStatusBarExpandEnbale()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mStatusBarExpand:Z

    return v0
.end method

.method public ismClockReady()Z
    .locals 1

    .prologue
    .line 2667
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockReady:Z

    return v0
.end method

.method public ismIsPasswordLock()Z
    .locals 1

    .prologue
    .line 2683
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    return v0
.end method

.method public ismMultithemLockscreen()Z
    .locals 1

    .prologue
    .line 2691
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mMultithemLockscreen:Z

    return v0
.end method

.method public ismShowedVoicePrint()Z
    .locals 1

    .prologue
    .line 2675
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    return v0
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 1141
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1144
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1145
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    :cond_1
    :goto_1
    return-void

    .line 1143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1150
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1152
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_1
.end method

.method public registerRadioStateCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    .line 2087
    return-void
.end method

.method public registerSystemStateCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    .line 2022
    return-void
.end method

.method public removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1127
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1129
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1130
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1128
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1133
    :cond_2
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1194
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1196
    return-void
.end method

.method public reportDialogClose()V
    .locals 1

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->reportDialogClose()V

    .line 2384
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    .line 1261
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1262
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .prologue
    .line 1249
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1250
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    .line 1215
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1217
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    .line 1219
    :cond_0
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 2143
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1

    .line 2144
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    .line 2150
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_2

    .line 2146
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_0

    .line 2148
    :cond_2
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "here, SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state is NETWORK_LOCKED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    .line 2377
    return-void
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .locals 4
    .parameter "showing"

    .prologue
    .line 1187
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyguardVisibilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1189
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1190
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1191
    return-void

    .line 1189
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlternateUnlockEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1273
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    .line 1274
    return-void
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugFlag"

    .prologue
    .line 1830
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    .line 1831
    return-void
.end method

.method public setDmLocked(Z)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 1518
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    .line 1519
    return-void
.end method

.method public setPINDismiss(IZZ)V
    .locals 5
    .parameter "simId"
    .parameter "pinOrPuk"
    .parameter "dismiss"

    .prologue
    .line 2036
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPINDismiss, simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pinOrPuk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dismiss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPinPukDismissFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    if-nez p1, :cond_0

    .line 2041
    const/4 v0, 0x1

    .line 2042
    .local v0, pinFlag:I
    const/4 v1, 0x4

    .line 2047
    .local v1, pukFlag:I
    :goto_0
    if-eqz p3, :cond_2

    .line 2048
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    if-eqz p2, :cond_1

    .end local v0           #pinFlag:I
    :goto_1
    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    .line 2052
    :goto_2
    return-void

    .line 2044
    .end local v1           #pukFlag:I
    :cond_0
    const/4 v0, 0x2

    .line 2045
    .restart local v0       #pinFlag:I
    const/16 v1, 0x8

    .restart local v1       #pukFlag:I
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2048
    goto :goto_1

    .line 2050
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    if-eqz p2, :cond_3

    xor-int/lit8 v2, v0, -0x1

    :goto_3
    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    goto :goto_2

    :cond_3
    xor-int/lit8 v2, v1, -0x1

    goto :goto_3
.end method

.method public setQueryBaseTime()V
    .locals 2

    .prologue
    .line 2651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    .line 2652
    return-void
.end method

.method public setShowWhichKeywords(I)V
    .locals 0
    .parameter "which"

    .prologue
    .line 2661
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowWhichKeywords:I

    .line 2662
    return-void
.end method

.method public setmClockReady(Z)V
    .locals 0
    .parameter "mClockReady"

    .prologue
    .line 2671
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockReady:Z

    .line 2672
    return-void
.end method

.method public setmIsPasswordLock(Z)V
    .locals 0
    .parameter "mIsPasswordLock"

    .prologue
    .line 2687
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsPasswordLock:Z

    .line 2688
    return-void
.end method

.method public setmShowedVoicePrint(Z)V
    .locals 0
    .parameter "mShowedVoicePrint"

    .prologue
    .line 2679
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowedVoicePrint:Z

    .line 2680
    return-void
.end method

.method public unRegisterRadioStateCallback()V
    .locals 1

    .prologue
    .line 2025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    .line 2026
    return-void
.end method

.method updateResources()V
    .locals 4

    .prologue
    .line 1874
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1875
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    const v3, 0x2050096

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1877
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1878
    .local v0, nagbtn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1879
    const v2, 0x20500ab

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1881
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1882
    .local v1, posbtn:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 1883
    const v2, 0x205009b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1886
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimChangedPrompt()V

    .line 1887
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimSettingsView()V

    .line 1889
    .end local v0           #nagbtn:Landroid/widget/Button;
    .end local v1           #posbtn:Landroid/widget/Button;
    :cond_2
    return-void
.end method
