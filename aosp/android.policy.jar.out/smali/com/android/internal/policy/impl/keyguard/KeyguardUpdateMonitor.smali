.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$8;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$NewSimDialogCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SequenceDialog;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    }
.end annotation


# static fields
.field public static final ACTION_SMARTBOOK_PLUG:Ljava/lang/String; = "android.intent.action.SMARTBOOK_PLUG"

.field private static final CLEAR_NEW_EVENT_VIEW_INTENT:Ljava/lang/String; = "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

.field private static DEBUG:Z = false

.field private static DEBUG_SIM_STATES:Z = false

.field public static final EXTRA_SMARTBOOK_PLUG_STATE:Ljava/lang/String; = "state"

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final GMS_SETUP_COMPONENT:Ljava/lang/String; = "com.google.android.setupwizard.SetupWizardActivity"

.field private static final GMS_SETUP_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final KEYGUARD_BATTERY_NUMBER:I = 0x2

.field static final LOW_BATTERY_THRESHOLD:I = 0x10

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field protected static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_CONFIGURATION_CHANGED:I = 0x3ed

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DOCK_STATUS_UPDATE:I = 0x3f6

.field private static final MSG_DOWNLOAD_CALIBRATION_DATA_UPDATE:I = 0x3f5

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_KEYGUARD_RESET_DISMISS:I = 0x3ef

.field private static final MSG_KEYGUARD_SIM_NAME_UPDATE:I = 0x3ee

.field private static final MSG_KEYGUARD_UPDATE_LAYOUT:I = 0x3f0

.field private static final MSG_KEYGUARD_VISIBILITY_CHANGED:I = 0x138

.field private static final MSG_MODEM_RESET:I = 0x3f1

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIMINFO_CHANGED:I = 0x3ec

.field private static final MSG_SIM_DETECTED:I = 0x3ea

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_SYSTEM_STATE:I = 0x3f4

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_REMOVED:I = 0x137

.field private static final MSG_USER_SWITCHED:I = 0x136

.field private static final PIN_PUK_ME_RESET:I = 0x0

.field private static final QUERY_SIMME_LOCK_RESULT:Ljava/lang/String; = "com.android.phone.QUERY_SIMME_LOCK_RESULT"

.field private static final SIMME_LOCK_LEFT_COUNT:Ljava/lang/String; = "com.android.phone.SIMME_LOCK_LEFT_COUNT"

.field private static final SIM_1_ME_DISMISSED:I = 0x100

.field private static final SIM_1_PIN_DISMISSED:I = 0x1

.field private static final SIM_1_PIN_PUK_MASK:I = 0x5

.field private static final SIM_1_PUK_DISMISSED:I = 0x4

.field private static final SIM_2_ME_DISMISSED:I = 0x200

.field private static final SIM_2_PIN_DISMISSED:I = 0x2

.field private static final SIM_2_PIN_PUK_MASK:I = 0xa

.field private static final SIM_2_PUK_DISMISSED:I = 0x8

.field private static final SIM_3_ME_DISMISSED:I = 0x400

.field private static final SIM_3_PIN_DISMISSED:I = 0x10

.field private static final SIM_3_PIN_PUK_MASK:I = 0x50

.field private static final SIM_3_PUK_DISMISSED:I = 0x40

.field private static final SIM_4_ME_DISMISSED:I = 0x800

.field private static final SIM_4_PIN_DISMISSED:I = 0x20

.field private static final SIM_4_PIN_PUK_MASK:I = 0xa0

.field private static final SIM_4_PUK_DISMISSED:I = 0x80

.field private static SIM_DETECT_NEW:Ljava/lang/String; = null

.field private static SIM_DETECT_REMOVE:Ljava/lang/String; = null

.field private static SIM_DETECT_SWAP:Ljava/lang/String; = null

.field private static final SYSTEM_STATE_BOOTUP:I = 0x1

.field private static final SYSTEM_STATE_SHUTDOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private mAlternateUnlockEnabled:Z

.field private mBatteryStatus:[Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

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

.field private mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

.field private mClockVisible:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mCtaDialog:Landroid/app/AlertDialog;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

.field private mDocktoDesk:Z

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private final mHandler:Landroid/os/Handler;

.field private mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

.field private mKeyguardDMLocked:Z

.field private mKeyguardIsVisible:Z

.field mNetSearching:[Z

.field private mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPinPukMeDismissFlag:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPromptView:Landroid/view/View;

.field private mQueryBaseTime:J

.field private mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

.field private mRingMode:I

.field private mSimCardChangedDialog:Landroid/app/AlertDialog;

.field private mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

.field private mSimLastState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimMeCategory:[I

.field private mSimMeLeftRetryCount:[I

.field private mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

.field private mTelephonyPlmn:[Ljava/lang/CharSequence;

.field private mTelephonySpn:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    .line 106
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    .line 1321
    const-string v0, "NEW"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    .line 1322
    const-string v0, "REMOVE"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_REMOVE:Ljava/lang/String;

    .line 1323
    const-string v0, "SWAP"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_SWAP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDocktoDesk:Z

    .line 155
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 156
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 162
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 261
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1304
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    .line 1317
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    .line 1318
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    .line 1319
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1419
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    .line 1423
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    .line 635
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 637
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initMembers()V

    .line 640
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    .line 643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmCheckLocked()V

    .line 646
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initPhoneStateListener()V

    .line 648
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 650
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeviceProvisioned is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 662
    :cond_0
    new-array v0, v10, [Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:[Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 663
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v10, :cond_1

    .line 664
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:[Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v3, 0x64

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIII)V

    aput-object v0, v9, v1

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeCategory:[I

    .line 668
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeLeftRetryCount:[I

    .line 671
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v0

    if-gt v1, v0, :cond_2

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeCategory:[I

    aput v4, v0, v1

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeLeftRetryCount:[I

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 677
    :cond_2
    const-class v0, Lcom/mediatek/common/policy/IOperatorSIMString;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/policy/IOperatorSIMString;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    .line 679
    const-class v0, Lcom/mediatek/common/policy/ICardInfoExt;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/policy/ICardInfoExt;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    .line 682
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 683
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v0, "com.android.phone.ACTION_UNLOCK_SIM_LOCK"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v0, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v0, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v0, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v0, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v0, "android.intent.action.RADIO_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v0, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v0, "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const-string v0, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 719
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 720
    .local v6, bootCompleteFilter:Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 721
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 724
    const-string v0, "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 728
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_2
    return-void

    .line 739
    :catch_0
    move-exception v7

    .line 741
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleRadioStateChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSystemStateChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDownloadCalibrationDataUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDockStatusUpdate(I)V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDocktoDesk:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDocktoDesk:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeCategory:[I

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeLeftRetryCount:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMInfoChanged(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMCardChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMNameUpdate(I)V

    return-void
.end method

.method private dmCheckLocked()V
    .locals 7

    .prologue
    .line 1498
    :try_start_0
    const-string v4, "DmAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1499
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1500
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 1501
    .local v0, agent:Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v3

    .line 1502
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

    .line 1503
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setDmLocked(Z)V

    .line 1510
    .end local v0           #agent:Lcom/mediatek/common/dm/DmAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #flag:Z
    :goto_0
    return-void

    .line 1505
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_0
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "dmCheckLocked, DmAgent doesn\'t exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1507
    .end local v1           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1508
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "get DM status failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1068
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
    .line 614
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 617
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private getSimNumber(I)I
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 1924
    const/4 v0, 0x0

    .line 1925
    .local v0, n:I
    :goto_0
    if-eqz p1, :cond_1

    .line 1926
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1927
    add-int/lit8 v0, v0, 0x1

    .line 1929
    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1931
    :cond_1
    return v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1054
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "EXTRA_SHOW_PLMN =  TRUE "

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1060
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1057
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1059
    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "EXTRA_SHOW_PLMN = FALSE  "

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1076
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1082
    .end local v0           #spn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 7
    .parameter "status"

    .prologue
    .line 916
    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->index:I

    .line 917
    .local v3, idx:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:[Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    aget-object v4, v4, v3

    invoke-static {v4, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 918
    .local v0, batteryUpdateInteresting:Z
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBatteryUpdate index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " updateInteresting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:[Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    aput-object p1, v4, v3

    .line 920
    if-eqz v0, :cond_2

    .line 921
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 922
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 923
    .local v1, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_1

    .line 924
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 921
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    .end local v1           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private handleCarrierInfoUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V
    .locals 5
    .parameter "spnUpdate"

    .prologue
    .line 934
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 938
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 939
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 940
    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    aget-object v3, v3, v4

    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 937
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 4

    .prologue
    .line 992
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleClockVisibilityChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 994
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 995
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 996
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 993
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleDockStatusUpdate(I)V
    .locals 3
    .parameter "dockState"

    .prologue
    .line 1857
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1858
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1859
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1860
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDockStatusUpdate(I)V

    .line 1857
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1863
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleDownloadCalibrationDataUpdate()V
    .locals 4

    .prologue
    .line 1936
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleDownloadCalibrationDataUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1938
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1939
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1940
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1937
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1943
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .locals 6
    .parameter "showing"

    .prologue
    const/4 v2, 0x1

    .line 1005
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

    .line 1006
    :cond_0
    if-ne p1, v2, :cond_2

    .line 1007
    .local v2, isShowing:Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 1008
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1009
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1010
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1011
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 1008
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1006
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    .end local v2           #isShowing:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1014
    .restart local v1       #i:I
    .restart local v2       #isShowing:Z
    :cond_3
    return-void
.end method

.method private handleRadioStateChanged(I)V
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 2152
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2153
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRadioStateChanged, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", + , mSimState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 2155
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 2156
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 2157
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_1

    .line 2160
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_1

    .line 2161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    .line 2165
    :cond_1
    return-void
.end method

.method private handleSIMCardChanged()V
    .locals 11

    .prologue
    const v8, 0x205008a

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1867
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1868
    .local v1, factory:Landroid/view/LayoutInflater;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1871
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSIMCount()I

    move-result v4

    .line 1872
    .local v4, simCount:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSimDetectStatus()Ljava/lang/String;

    move-result-object v5

    .line 1873
    .local v5, simDetectStatus:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_REMOVE:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    .line 1874
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1875
    const v6, #string@dialog_alert_title#t

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1876
    const v6, #drawable@ic_dialog_alert#t

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1877
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1879
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1880
    .local v2, msg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    sget-object v7, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->UIMSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v6, v2, v10, v7, v8}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1881
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1883
    const v6, #string@ok#t

    invoke-virtual {v0, v6, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1884
    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1911
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    .line 1912
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1913
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1920
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1921
    return-void

    .line 1887
    :cond_0
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1888
    const v6, 0x205009a

    new-instance v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1897
    const v6, 0x20500aa

    invoke-virtual {v0, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1899
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2050095

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1900
    .local v3, simCardChangedTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    sget-object v7, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->UIMSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v6, v3, v10, v7, v8}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1901
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1904
    const v6, 0x207001d

    invoke-virtual {v1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1906
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimChangedPrompt()V

    .line 1907
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimSettingsView()V

    .line 1908
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private handleSIMInfoChanged(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1846
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1847
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1848
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1849
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1850
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSIMInfoChanged(I)V

    .line 1847
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1854
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private handleSIMNameUpdate(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1834
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1835
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1836
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1837
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1838
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenUpdate(I)V

    .line 1835
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1841
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->updateResources()V

    .line 1843
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 8
    .parameter "simArgs"

    .prologue
    .line 951
    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 953
    .local v2, state:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 954
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

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 960
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "handleSimStateChange: !isValidSimId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_1
    return-void

    .line 964
    :cond_2
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 965
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

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    aget-object v3, v4, v5

    .line 972
    .local v3, tempState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 974
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_1

    .line 976
    :cond_4
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v4, :cond_5

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

    .line 977
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    aput-object v2, v4, v5

    .line 978
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimStateChange: mSimState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 980
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 981
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_6

    .line 982
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 979
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleSystemStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    if-nez v0, :cond_1

    .line 2170
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2171
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "mSystemStateCallback is null, skipped!"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    :cond_0
    :goto_0
    return-void

    .line 2176
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2186
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2187
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "received unknown system state change event"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2178
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;->onSysBootup()V

    goto :goto_0

    .line 2182
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;->onSysShutdown()V

    goto :goto_0

    .line 2176
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
    .line 903
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 905
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 906
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 904
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 910
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private initMembers()V
    .locals 3

    .prologue
    .line 622
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 623
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 624
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    .line 625
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    .line 626
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:[Z

    .line 627
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v1, v0

    .line 629
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v1, v0

    .line 630
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method private initPhoneStateListener()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 2094
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2123
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2125
    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2126
    .local v2, t:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2127
    .local v1, notifyNow:Ljava/lang/Boolean;
    const-string v7, "telephony.registry"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    .line 2128
    .local v3, tr1:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v7, "KeyguardUpdateMonitor"

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v8}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v3, v7, v8, v9, v10}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 2129
    const-string v7, "telephony.registry2"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v4

    .line 2130
    .local v4, tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v7, "KeyguardUpdateMonitor"

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v8}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v4, v7, v8, v9, v10}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 2132
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 2133
    const-string v7, "telephony.registry3"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v5

    .line 2134
    .local v5, tr3:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v7, "KeyguardUpdateMonitor"

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v8}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 2136
    .end local v5           #tr3:Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1

    .line 2137
    const-string v7, "telephony.registry4"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v6

    .line 2138
    .local v6, tr4:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v7, "KeyguardUpdateMonitor"

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v8}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2149
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    .end local v2           #t:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #tr1:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v4           #tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v6           #tr4:Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_1
    :goto_1
    return-void

    .line 2126
    .restart local v2       #t:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 2140
    .end local v2           #t:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2141
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "KeyguardUpdateMonitor"

    const-string v8, "Fail to listen GEMINI state"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2142
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2143
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v7, "KeyguardUpdateMonitor"

    const-string v8, "The registry is null"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2146
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v7, v9, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1
.end method

.method private initSimChangedPrompt()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1583
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getNewSimSlot()I

    move-result v6

    .line 1584
    .local v6, newSimSlot:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSimDetectStatus()Ljava/lang/String;

    move-result-object v7

    .line 1586
    .local v7, simDetectStatus:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1587
    .local v4, msg:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimNumber(I)I

    move-result v5

    .line 1589
    .local v5, newSimNumber:I
    const/4 v2, 0x4

    .line 1590
    .local v2, mNumOfTextView:I
    new-array v3, v14, [Landroid/widget/TextView;

    .line 1591
    .local v3, mTextViewName:[Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v10, 0x2100077

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v3, v13

    .line 1592
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v10, 0x2100078

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v3, v12

    .line 1593
    const/4 v10, 0x2

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v11, 0x2100079

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v3, v10

    .line 1594
    const/4 v10, 0x3

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v11, 0x210007a

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v3, v10

    .line 1595
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v14, :cond_0

    .line 1596
    aget-object v9, v3, v0

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1599
    :cond_0
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1601
    if-ne v5, v12, :cond_2

    .line 1602
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050096

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1607
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v9, v4, v6, v5, v10}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMStringForSIMDetection(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1609
    const/4 v8, 0x0

    .line 1610
    .local v8, simId:I
    const/4 v1, 0x0

    .line 1611
    .local v1, mIndexOfTextView:I
    :goto_2
    if-eqz v6, :cond_4

    .line 1612
    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_1

    .line 1613
    aget-object v9, v3, v1

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1614
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    aget-object v10, v3, v1

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v8, v11, v12}, Lcom/mediatek/common/policy/ICardInfoExt;->addOptrNameBySlot(Landroid/widget/TextView;ILandroid/content/Context;Ljava/lang/String;)V

    .line 1615
    add-int/lit8 v1, v1, 0x1

    .line 1617
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 1618
    ushr-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1604
    .end local v1           #mIndexOfTextView:I
    .end local v8           #simId:I
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050097

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1620
    :cond_3
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_REMOVE:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1621
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050098

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1623
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    const/4 v10, -0x1

    sget-object v11, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v9, v4, v10, v11, v12}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1630
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v10, 0x2100076

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1631
    return-void

    .line 1624
    :cond_5
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_SWAP:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1625
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050099

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1627
    :cond_6
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown SIMCard Changed:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private initSimSettingsView()V
    .locals 33

    .prologue
    .line 1633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "voice_call_sim_setting"

    const-wide/16 v19, -0x5

    move-wide/from16 v0, v19

    invoke-static {v3, v7, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1635
    .local v5, voiceCallSimIdx:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "sms_sim_setting"

    const-wide/16 v19, -0x5

    move-wide/from16 v0, v19

    invoke-static {v3, v7, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1637
    .local v13, smsSimIdx:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "gprs_connection_sim_setting"

    const-wide/16 v19, -0x5

    move-wide/from16 v0, v19

    invoke-static {v3, v7, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    .line 1639
    .local v17, dataSimIdx:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "video_call_sim_setting"

    const-wide/16 v19, -0x5

    move-wide/from16 v0, v19

    invoke-static {v3, v7, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 1641
    .local v9, videoCallSimIdx:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 1642
    .local v27, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v27, :cond_1

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v32, 0x1

    .line 1643
    .local v32, voiceCapable:Z
    :goto_0
    if-eqz v27, :cond_2

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v25, 0x1

    .line 1644
    .local v25, smsCapable:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSIMCount()I

    move-result v3

    const/4 v7, 0x2

    if-lt v3, v7, :cond_3

    const/16 v22, 0x1

    .line 1646
    .local v22, multiSim:Z
    :goto_2
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1647
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initSimSettingsView, isVoiceCapable="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", isSmsCapabl="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", voiceCallSimIdx="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", smsSimIdx="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", dataSimIdx="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", videoCallSimIdx="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", multiSim="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x20500af

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1658
    .local v23, simSettingPrompt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    const/4 v7, -0x1

    sget-object v11, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-interface {v3, v0, v7, v11, v15}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x210007b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x210007d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 1663
    .local v30, voiceCall:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x210007e

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1664
    .local v4, voiceCallOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x210007c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 1665
    .local v31, voiceCallItem:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowVoiceCall(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1666
    const v3, 0x205009b

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameByIdx(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/common/policy/ICardInfoExt;->addOptrNameByIdx(Landroid/widget/TextView;JLandroid/content/Context;Ljava/lang/String;)V

    .line 1672
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x2100080

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1673
    .local v28, videoCall:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x2100081

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1674
    .local v8, videoCallOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x210007f

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 1675
    .local v29, videoCallItem:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowVideoCall(ZZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1676
    const v3, 0x20500b0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameByIdx(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v7 .. v12}, Lcom/mediatek/common/policy/ICardInfoExt;->addOptrNameByIdx(Landroid/widget/TextView;JLandroid/content/Context;Ljava/lang/String;)V

    .line 1682
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x2100083

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1683
    .local v24, sms:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x2100084

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1684
    .local v12, smsOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x2100082

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 1685
    .local v26, smsItem:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowSms(ZZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1686
    const v3, 0x205009c

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameByIdx(J)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v11 .. v16}, Lcom/mediatek/common/policy/ICardInfoExt;->addOptrNameByIdx(Landroid/widget/TextView;JLandroid/content/Context;Ljava/lang/String;)V

    .line 1692
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x2100085

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1693
    .local v21, data:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v7, 0x2100086

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1694
    .local v16, dataOptr:Landroid/widget/TextView;
    const v3, 0x205009d

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameByIdx(J)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v15 .. v20}, Lcom/mediatek/common/policy/ICardInfoExt;->addOptrNameByIdx(Landroid/widget/TextView;JLandroid/content/Context;Ljava/lang/String;)V

    .line 1696
    return-void

    .line 1642
    .end local v4           #voiceCallOptr:Landroid/widget/TextView;
    .end local v8           #videoCallOptr:Landroid/widget/TextView;
    .end local v12           #smsOptr:Landroid/widget/TextView;
    .end local v16           #dataOptr:Landroid/widget/TextView;
    .end local v21           #data:Landroid/widget/TextView;
    .end local v22           #multiSim:Z
    .end local v23           #simSettingPrompt:Ljava/lang/String;
    .end local v24           #sms:Landroid/widget/TextView;
    .end local v25           #smsCapable:Z
    .end local v26           #smsItem:Landroid/view/View;
    .end local v28           #videoCall:Landroid/widget/TextView;
    .end local v29           #videoCallItem:Landroid/view/View;
    .end local v30           #voiceCall:Landroid/widget/TextView;
    .end local v31           #voiceCallItem:Landroid/view/View;
    .end local v32           #voiceCapable:Z
    :cond_1
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 1643
    .restart local v32       #voiceCapable:Z
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 1644
    .restart local v25       #smsCapable:Z
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1669
    .restart local v4       #voiceCallOptr:Landroid/widget/TextView;
    .restart local v22       #multiSim:Z
    .restart local v23       #simSettingPrompt:Ljava/lang/String;
    .restart local v30       #voiceCall:Landroid/widget/TextView;
    .restart local v31       #voiceCallItem:Landroid/view/View;
    :cond_4
    const/16 v3, 0x8

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1679
    .restart local v8       #videoCallOptr:Landroid/widget/TextView;
    .restart local v28       #videoCall:Landroid/widget/TextView;
    .restart local v29       #videoCallItem:Landroid/view/View;
    :cond_5
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1689
    .restart local v12       #smsOptr:Landroid/widget/TextView;
    .restart local v24       #sms:Landroid/widget/TextView;
    .restart local v26       #smsItem:Landroid/view/View;
    :cond_6
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private internetCallIsOn()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1710
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    .line 1711
    .local v1, isSupport:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_internet_call_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 1712
    .local v0, isOn:Z
    :goto_0
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1713
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

    .line 1715
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1718
    :goto_1
    return v2

    .end local v0           #isOn:Z
    :cond_1
    move v0, v3

    .line 1711
    goto :goto_0

    .restart local v0       #isOn:Z
    :cond_2
    move v2, v3

    .line 1718
    goto :goto_1
.end method

.method public static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 1788
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, bootReason:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1791
    .local v1, ret:Z
    :goto_0
    return v1

    .line 1789
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

    .line 1021
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 1022
    .local v0, nowPluggedIn:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 1023
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 1028
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 1046
    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    .line 1023
    goto :goto_0

    .line 1038
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1043
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_3
    move v3, v4

    .line 1046
    goto :goto_1
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 746
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

.method private isSimLocked(I)Z
    .locals 2
    .parameter "simId"

    .prologue
    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 1272
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

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

.method private isSimPinSecure(I)Z
    .locals 2
    .parameter "simId"

    .prologue
    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 1293
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 1121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:[Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1124
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1125
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1126
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1128
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1129
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1131
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1133
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1134
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1133
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1138
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1140
    const/4 v0, 0x0

    :goto_3
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1141
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSearchNetworkUpdate(IZ)V

    .line 1140
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1143
    :cond_3
    return-void
.end method

.method private shouldShowSms(ZZ)Z
    .locals 3
    .parameter "smsCapable"
    .parameter "multiSim"

    .prologue
    .line 1750
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1751
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

    .line 1754
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1755
    const/4 v0, 0x1

    .line 1757
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowVideoCall(ZZ)Z
    .locals 6
    .parameter "voiceCallCapable"
    .parameter "multiSim"

    .prologue
    .line 1723
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1724
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldShowVideoCall, video_SUPPORT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekVT3G324MSupport()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 3G_SWITCH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekGemini3GSwitchSupport()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", voiceCallCapable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "multiSim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1731
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    const/4 v1, -0x1

    .line 1734
    .local v1, slot3G:I
    if-eqz v2, :cond_1

    .line 1735
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1741
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekVT3G324MSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekGemini3GSwitchSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1744
    const/4 v3, 0x1

    .line 1746
    :goto_1
    return v3

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "get3GCapabilitySIM exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1746
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private shouldShowVoiceCall(ZZ)Z
    .locals 3
    .parameter "voiceCallCapable"
    .parameter "multiSim"

    .prologue
    .line 1699
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1700
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

    .line 1702
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->internetCallIsOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1703
    :cond_1
    const/4 v0, 0x1

    .line 1705
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private watchForDeviceProvisioning()V
    .locals 5

    .prologue
    .line 751
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 763
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 769
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 770
    .local v0, provisioned:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 771
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 772
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x134

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 776
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFailedUnlockAttempts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1222
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1223
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1224
    return-void
.end method

.method public dmIsLocked()Z
    .locals 1

    .prologue
    .line 1488
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    return v0
.end method

.method public getFailedUnlockAttempts()I
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    .line 2064
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2065
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    .line 2069
    :goto_0
    return-object v0

    .line 2068
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for default sim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, v3

    goto :goto_0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    .line 1243
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

.method public getOptrNameByIdx(J)Ljava/lang/String;
    .locals 5
    .parameter "simIdx"

    .prologue
    const-wide/16 v3, 0x0

    .line 1514
    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    .line 1515
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrNameByIdx, xxsimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1517
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 1518
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameByIdx, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const/4 v1, 0x0

    .line 1533
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    .line 1521
    .restart local v0       #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1524
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    .line 1525
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1526
    :cond_2
    const-wide/16 v1, -0x2

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    .line 1527
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1528
    :cond_3
    cmp-long v1, v3, p1

    if-nez v1, :cond_4

    .line 1529
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1530
    :cond_4
    const-wide/16 v1, -0x3

    cmp-long v1, v1, p1

    if-nez v1, :cond_5

    .line 1531
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1533
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrNameBySlot(I)Ljava/lang/String;
    .locals 4
    .parameter "slot"

    .prologue
    .line 1538
    if-ltz p1, :cond_1

    .line 1539
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrNameBySlot, xxSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1541
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 1542
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlot, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const/4 v1, 0x0

    .line 1546
    :goto_0
    return-object v1

    .line 1545
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1549
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getOptrNameBySlotForCTA(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 1554
    if-ltz p1, :cond_5

    .line 1555
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOptrNameBySlot, xxSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1557
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1558
    :cond_0
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "getOptrNameBySlotId, return null"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, newSimStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    sget-object v4, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1562
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOptrNameBySlotForCTA, newSimStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 1565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1578
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v1           #newSimStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1566
    .restart local v0       #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v1       #newSimStr:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2

    .line 1567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 03"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1568
    :cond_2
    const/4 v2, 0x3

    if-ne v2, p1, :cond_3

    .line 1569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 04"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1571
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1574
    .end local v1           #newSimStr:Ljava/lang/String;
    :cond_4
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1578
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20500a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPINDismissFlag(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;)Z
    .locals 9
    .parameter "simId"
    .parameter "lockType"

    .prologue
    const/4 v5, 0x1

    .line 2015
    const-string v6, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPINDismissFlag, simId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lockType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mPinPukMeDismissFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const/4 v0, 0x0

    .line 2022
    .local v0, flag2Check:I
    if-nez p1, :cond_0

    .line 2023
    const/4 v2, 0x1

    .line 2024
    .local v2, pinFlag:I
    const/4 v3, 0x4

    .line 2025
    .local v3, pukFlag:I
    const/16 v1, 0x100

    .line 2039
    .local v1, meFlag:I
    :goto_0
    const/4 v4, 0x0

    .line 2040
    .local v4, result:Z
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$8;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardUpdateMonitor$SimLockType:[I

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2051
    :goto_1
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    and-int/2addr v6, v0

    if-ne v6, v0, :cond_3

    move v4, v5

    .line 2052
    :goto_2
    return v4

    .line 2026
    .end local v1           #meFlag:I
    .end local v2           #pinFlag:I
    .end local v3           #pukFlag:I
    .end local v4           #result:Z
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2027
    const/4 v2, 0x2

    .line 2028
    .restart local v2       #pinFlag:I
    const/16 v3, 0x8

    .line 2029
    .restart local v3       #pukFlag:I
    const/16 v1, 0x200

    .restart local v1       #meFlag:I
    goto :goto_0

    .line 2030
    .end local v1           #meFlag:I
    .end local v2           #pinFlag:I
    .end local v3           #pukFlag:I
    :cond_1
    const/4 v6, 0x2

    if-ne p1, v6, :cond_2

    .line 2031
    const/16 v2, 0x10

    .line 2032
    .restart local v2       #pinFlag:I
    const/16 v3, 0x40

    .line 2033
    .restart local v3       #pukFlag:I
    const/16 v1, 0x400

    .restart local v1       #meFlag:I
    goto :goto_0

    .line 2035
    .end local v1           #meFlag:I
    .end local v2           #pinFlag:I
    .end local v3           #pukFlag:I
    :cond_2
    const/16 v2, 0x20

    .line 2036
    .restart local v2       #pinFlag:I
    const/16 v3, 0x80

    .line 2037
    .restart local v3       #pukFlag:I
    const/16 v1, 0x800

    .restart local v1       #meFlag:I
    goto :goto_0

    .line 2042
    .restart local v4       #result:Z
    :pswitch_0
    move v0, v2

    .line 2043
    goto :goto_1

    .line 2045
    :pswitch_1
    move v0, v3

    .line 2046
    goto :goto_1

    .line 2048
    :pswitch_2
    move v0, v1

    goto :goto_1

    .line 2051
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 2040
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1235
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getQueryBaseTime()J
    .locals 2

    .prologue
    .line 2484
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    return-wide v0
.end method

.method getRetryPukCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 2434
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2435
    const-string v0, "gsm.sim.retry.puk1.4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2441
    :goto_0
    return v0

    .line 2436
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2437
    const-string v0, "gsm.sim.retry.puk1.3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 2438
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2439
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 2441
    :cond_2
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSearchingFlag(I)Z
    .locals 2
    .parameter "simId"

    .prologue
    .line 1817
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:[Z

    aget-boolean v0, v0, p1

    .line 1820
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    goto :goto_0
.end method

.method public getSimMeCategory(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeCategory:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSimMeLeftRetryCount(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeLeftRetryCount:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    .line 1159
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    .line 1164
    :goto_0
    return-object v0

    .line 1163
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for default sim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, v3

    goto :goto_0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "simId"

    .prologue
    .line 1193
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    .line 1196
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "simId"

    .prologue
    .line 1202
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isValidSimId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    .line 1205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method protected handleBootCompleted()V
    .locals 3

    .prologue
    .line 811
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 812
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 814
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 812
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    .prologue
    .line 782
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 783
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 784
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 782
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 788
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 4

    .prologue
    .line 844
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 845
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 846
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 844
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    .line 854
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 856
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 857
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 859
    :cond_2
    return-void
.end method

.method protected handleLockScreenUpdateLayout(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1825
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1826
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1827
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1828
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenUpdate(I)V

    .line 1825
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1831
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "newState"

    .prologue
    .line 865
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

    .line 867
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 868
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 870
    :cond_1
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 871
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 877
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 878
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 879
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_3

    .line 880
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 877
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 872
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_4
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 873
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 874
    :cond_5
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 875
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 883
    .restart local v1       #i:I
    :cond_6
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 889
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

    .line 890
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 891
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 892
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 893
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 891
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method protected handleUserRemoved(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 832
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 834
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserRemoved(I)V

    .line 832
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserSwitched(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .parameter "userId"
    .parameter "reply"

    .prologue
    .line 794
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 795
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 796
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitched(I)V

    .line 794
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 802
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_1
    return-void

    .line 803
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public hasBootCompleted()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isAlternateUnlockEnabled()Z
    .locals 1

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 1231
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isDocktoDesk()Z
    .locals 1

    .prologue
    .line 2490
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDocktoDesk:Z

    return v0
.end method

.method public isEncryptMode()Z
    .locals 2

    .prologue
    .line 2078
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2079
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

.method public isKeyguardVisible()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return v0
.end method

.method public isPhoneAppReady()Z
    .locals 8

    .prologue
    .line 1469
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1471
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 1472
    .local v3, ready:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1473
    .local v5, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v5, :cond_0

    .line 1474
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "runningAppInfo == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1483
    .end local v3           #ready:Z
    .local v4, ready:I
    :goto_0
    return v4

    .line 1477
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

    .line 1478
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "com.android.phone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1479
    const/4 v3, 0x1

    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    move v4, v3

    .line 1483
    .restart local v4       #ready:I
    goto :goto_0
.end method

.method public isSIMInserted(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 1768
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1770
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1771
    const/4 v2, 0x1

    .line 1776
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "Get sim insert status failure!"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSimLocked()Z
    .locals 3

    .prologue
    .line 1260
    const/4 v0, 0x0

    .line 1261
    .local v0, bHasSimLock:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1262
    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1263
    :goto_1
    if-eqz v0, :cond_3

    .line 1267
    :cond_1
    return v0

    .line 1262
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1261
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isSimPinSecure()Z
    .locals 3

    .prologue
    .line 1280
    const/4 v0, 0x0

    .line 1281
    .local v0, bHasSimPinSecure:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1282
    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1283
    :goto_1
    if-eqz v0, :cond_3

    .line 1287
    :cond_1
    return v0

    .line 1282
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1281
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public minusSimMeLeftRetryCount(I)V
    .locals 2
    .parameter "simId"

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeLeftRetryCount:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    .line 2552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimMeLeftRetryCount:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 2554
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 1105
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

    .line 1107
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1108
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1109
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    :cond_1
    :goto_1
    return-void

    .line 1107
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1114
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1116
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_1
.end method

.method public registerRadioStateCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    .line 2060
    return-void
.end method

.method public registerSystemStateCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1950
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    .line 1951
    return-void
.end method

.method public removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1091
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

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1092
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1097
    :cond_2
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1153
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1155
    return-void
.end method

.method public reportDialogClose()V
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->reportDialogClose()V

    .line 2214
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    .line 1239
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1240
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1228
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 0

    .prologue
    .line 1189
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 2087
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "reportSimUnlocked"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    .line 2089
    return-void
.end method

.method public requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    .line 2207
    return-void
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .locals 4
    .parameter "showing"

    .prologue
    .line 1146
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

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1148
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1149
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1150
    return-void

    .line 1148
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 2533
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVerifyResult verifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2535
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 2536
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    :goto_0
    return-void

    .line 2539
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2540
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2541
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public setAlternateUnlockEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDocktoDesk()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1254
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    goto :goto_0
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugFlag"

    .prologue
    .line 1780
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    .line 1781
    return-void
.end method

.method public setDmLocked(Z)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 1492
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    .line 1493
    return-void
.end method

.method public setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V
    .locals 7
    .parameter "simId"
    .parameter "lockType"
    .parameter "dismiss"

    .prologue
    .line 1965
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPINDismiss, simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lockType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dismiss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPinPukMeDismissFlag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/4 v0, 0x0

    .line 1972
    .local v0, flag2Dismiss:I
    if-nez p1, :cond_0

    .line 1973
    const/4 v2, 0x1

    .line 1974
    .local v2, pinFlag:I
    const/4 v3, 0x4

    .line 1975
    .local v3, pukFlag:I
    const/16 v1, 0x100

    .line 1989
    .local v1, meFlag:I
    :goto_0
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$8;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardUpdateMonitor$SimLockType:[I

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2000
    :goto_1
    if-eqz p3, :cond_3

    .line 2001
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    or-int/2addr v4, v0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    .line 2005
    :goto_2
    return-void

    .line 1976
    .end local v1           #meFlag:I
    .end local v2           #pinFlag:I
    .end local v3           #pukFlag:I
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 1977
    const/4 v2, 0x2

    .line 1978
    .restart local v2       #pinFlag:I
    const/16 v3, 0x8

    .line 1979
    .restart local v3       #pukFlag:I
    const/16 v1, 0x200

    .restart local v1       #meFlag:I
    goto :goto_0

    .line 1980
    .end local v1           #meFlag:I
    .end local v2           #pinFlag:I
    .end local v3           #pukFlag:I
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 1981
    const/16 v2, 0x10

    .line 1982
    .restart local v2       #pinFlag:I
    const/16 v3, 0x40

    .line 1983
    .restart local v3       #pukFlag:I
    const/16 v1, 0x400

    .restart local v1       #meFlag:I
    goto :goto_0

    .line 1985
    .end local v1           #meFlag:I
    .end local v2           #pinFlag:I
    .end local v3           #pukFlag:I
    :cond_2
    const/16 v2, 0x20

    .line 1986
    .restart local v2       #pinFlag:I
    const/16 v3, 0x80

    .line 1987
    .restart local v3       #pukFlag:I
    const/16 v1, 0x800

    .restart local v1       #meFlag:I
    goto :goto_0

    .line 1991
    :pswitch_0
    move v0, v2

    .line 1992
    goto :goto_1

    .line 1994
    :pswitch_1
    move v0, v3

    .line 1995
    goto :goto_1

    .line 1997
    :pswitch_2
    move v0, v1

    goto :goto_1

    .line 2003
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukMeDismissFlag:I

    goto :goto_2

    .line 1989
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setQueryBaseTime()V
    .locals 2

    .prologue
    .line 2478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    .line 2479
    return-void
.end method

.method public unRegisterRadioStateCallback()V
    .locals 1

    .prologue
    .line 1954
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    .line 1955
    return-void
.end method

.method updateResources()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1795
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1797
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1798
    .local v2, simCardChangedTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    sget-object v4, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->UIMSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v3, v2, v6, v4, v5}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1799
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1802
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1803
    .local v0, nagbtn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1804
    const v3, 0x20500aa

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 1806
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1807
    .local v1, posbtn:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 1808
    const v3, 0x205009a

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 1811
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimChangedPrompt()V

    .line 1812
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimSettingsView()V

    .line 1814
    .end local v0           #nagbtn:Landroid/widget/Button;
    .end local v1           #posbtn:Landroid/widget/Button;
    .end local v2           #simCardChangedTitle:Ljava/lang/String;
    :cond_2
    return-void
.end method
