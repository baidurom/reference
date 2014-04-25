.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$4;,
        Lcom/android/phone/PhoneApp$RequestUnlockPINPUKReceiver;,
        Lcom/android/phone/PhoneApp$CustomizeCbReceiver;,
        Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$OutgoingCallPhoneAppReceiver;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field public static final ACTION_CALL_BACK_FROM_NOTIFICATION:Ljava/lang/String; = "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

.field public static final ACTION_HANG_UP_ONGOING_CALL:Ljava/lang/String; = "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

.field private static final ACTION_MODEM_STATE:Ljava/lang/String; = "com.mtk.ACTION_MODEM_STATE"

.field public static final ACTION_SEND_SMS_FROM_NOTIFICATION:Ljava/lang/String; = "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

.field private static final ALLOWED_EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final CCCI_MD_BROADCAST_EXCEPTION:I = 0x1

.field private static final CCCI_MD_BROADCAST_READY:I = 0x3

.field private static final CCCI_MD_BROADCAST_RESET:I = 0x2

.field private static final CHANNEL_URI:Landroid/net/Uri; = null

.field private static final CHANNEL_URI1:Landroid/net/Uri; = null

.field private static final CONFIG_RESET_CBNV_VALUE:Ljava/lang/String; = "config_reset_cbnv_value"

.field private static final CUSOMIZE_INTERVAL:I = 0x1388

.field private static final DBG:Z = true

.field static final DBG_LEVEL:I = 0x1

.field private static final DEFAULT_CALL_ORIGIN_PACKAGE:Ljava/lang/String; = "com.android.contacts"

.field public static final DELAY_SHOW_INCALL_SCREEN_FOR_STK_SETUP_CALL:I = 0xa0

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final EVENT_DATA_ROAMING_DISCONNECTED:I = 0xa

.field private static final EVENT_DATA_ROAMING_OK:I = 0xb

.field private static final EVENT_DOCK_STATE_CHANGED:I = 0xd

.field public static final EVENT_SHOW_INCALL_SCREEN_FOR_STK_SETUP_CALL:I = 0x39

.field private static final EVENT_SIM1_NETWORK_LOCKED:I = 0x13

.field private static final EVENT_SIM2_NETWORK_LOCKED:I = 0x15

.field private static final EVENT_SIM_NETWORK_LOCKED:I = 0x3

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x8

.field private static final EVENT_START_SIP_SERVICE:I = 0x11

.field private static final EVENT_TIMEOUT:I = 0x12

.field private static final EVENT_TOUCH_ANSWER_VT:I = 0x1e

.field private static final EVENT_TTY_MODE_GET:I = 0xf

.field private static final EVENT_TTY_MODE_SET:I = 0x10

.field private static final EVENT_TTY_PREFERRED_MODE_CHANGED:I = 0xe

.field private static final EVENT_UNSOL_CDMA_INFO_RECORD:I = 0xc

.field private static final EVENT_UPDATE_INCALL_NOTIFICATION:I = 0x9

.field private static final EVENT_WIRED_HEADSET_PLUG:I = 0x7

.field public static final EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.phone.CALL_ORIGIN"

.field private static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field public static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x271b

.field public static final MISSEDCALL_DELETE_INTENT:Ljava/lang/String; = "com.android.phone.MISSEDCALL_DELETE_INTENT"

.field public static final MMI_CANCEL:I = 0x35

.field public static final MMI_CANCEL2:I = 0x38

.field public static final MMI_COMPLETE:I = 0x34

.field public static final MMI_COMPLETE2:I = 0x37

.field public static final MMI_INITIATE:I = 0x33

.field public static final MMI_INITIATE2:I = 0x36

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final NETWORK_MODE_CHANGE:Ljava/lang/String; = "com.android.phone.NETWORK_MODE_CHANGE"

.field public static final NETWORK_MODE_CHANGE_RESPONSE:Ljava/lang/String; = "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field public static final OLD_NETWORK_MODE:Ljava/lang/String; = "com.android.phone.OLD_NETWORK_MODE"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROCESS_OUTGOING_CALLS"

.field private static final PREFS_NAME:Ljava/lang/String; = "com.android.phone_preferences"

.field private static final SET_CB_STATE:I = 0x3e8

.field private static final SET_CB_STATE_SIM1:I = 0x3e9

.field private static final SET_CB_STATE_SIM2:I = 0x3ea

.field private static final SIM1QUERY:I = 0x78

.field private static final SIM2QUERY:I = 0x7a

.field private static final STARTUP:Ljava/lang/String; = "startup"

.field private static final STKCALL_REGISTER_SPEECH_INFO:Ljava/lang/String; = "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

.field private static final TOTAL_COUNT:I = 0xa

.field private static final UNLOCK_PINPUK_REQUEST:I = 0x1770

.field private static final USE_CM:I = 0x1

.field private static final VDBG:Z = true

.field public static arySIMLockStatus:[I = null

.field static mDockState:I = 0x0

.field public static final sGemini:Z = true

.field private static sMe:Lcom/android/phone/PhoneApp; = null

.field public static final sVideoCallSupport:Z = true

.field static sVoiceCapable:Z


# instance fields
.field public callController:Lcom/android/phone/CallController;

.field public callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field public ihandledEventSIM1SIMLocked:I

.field public ihandledEventSIM2SIMLocked:I

.field public inCallUiState:Lcom/android/phone/InCallUiState;

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field public mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

.field private final mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

.field public mCM:Lcom/android/internal/telephony/CallManager;

.field public mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCachedSimPin:Ljava/lang/String;

.field private mCallerRecordInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/Recorder$CallerRecordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mCustomizeCbReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field private mIgnoreTouchUserActivity:Z

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field private mIsIpCall:Z

.field private mIsSimPinEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPartialWakeLockForPsensor:Landroid/os/PowerManager$WakeLock;

.field private final mPokeLockToken:Landroid/os/IBinder;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field mQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordTime:J

.field private final mRequestUnlockPINPUKReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field private mSetStateCount:I

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mTtyEnabled:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockForDisconnect:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field private mWakelockSequence:I

.field public notificationMgr:Lcom/android/phone/NotificationMgr;

.field public notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field public phone:Lcom/android/internal/telephony/Phone;

.field public phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field public ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 379
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    .line 2922
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneApp;->CHANNEL_URI:Landroid/net/Uri;

    .line 2923
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneApp;->CHANNEL_URI1:Landroid/net/Uri;

    return-void

    .line 379
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 773
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 176
    iput v1, p0, Lcom/android/phone/PhoneApp;->mSetStateCount:I

    .line 277
    iput v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 278
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 279
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 314
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 316
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 317
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 318
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 319
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 325
    iput v1, p0, Lcom/android/phone/PhoneApp;->mWakelockSequence:I

    .line 330
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 333
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    new-instance v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCustomizeCbReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    new-instance v0, Lcom/android/phone/PhoneApp$RequestUnlockPINPUKReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$RequestUnlockPINPUKReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mRequestUnlockPINPUKReceiver:Landroid/content/BroadcastReceiver;

    .line 367
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mAudioManager:Landroid/media/AudioManager;

    .line 373
    iput v1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 376
    iput v1, p0, Lcom/android/phone/PhoneApp;->ihandledEventSIM2SIMLocked:I

    .line 377
    iput v1, p0, Lcom/android/phone/PhoneApp;->ihandledEventSIM1SIMLocked:I

    .line 399
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 758
    new-instance v0, Lcom/android/phone/PhoneApp$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$2;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    .line 2906
    new-instance v0, Lcom/android/phone/PhoneApp$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$3;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 3080
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/PhoneApp;->mRecordTime:J

    .line 3088
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCallerRecordInfos:Ljava/util/Map;

    .line 774
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 775
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneApp;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->convertTTYmodeToRadio(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/phone/PhoneApp;->mSetStateCount:I

    return v0
.end method

.method static synthetic access$1408(Lcom/android/phone/PhoneApp;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/phone/PhoneApp;->mSetStateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/PhoneApp;->mSetStateCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/PhoneApp;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->clearSimSettingFlag(I)V

    return-void
.end method

.method static synthetic access$1900()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/phone/PhoneApp;->CHANNEL_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/PhoneApp;Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/phone/PhoneApp;->CHANNEL_URI1:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/PhoneApp;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCustomizeCbReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete2(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public static bNeedUnlockSIMLock(I)Z
    .locals 4
    .parameter "iSIMNum"

    .prologue
    .line 2717
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 2718
    .local v0, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 2722
    :cond_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bNeedUnlockSIMLock][NO Card/PIN/PUK]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const/4 v1, 0x0

    .line 2725
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clearSimSettingFlag(I)V
    .locals 9
    .parameter "slot"

    .prologue
    .line 2837
    const-wide/16 v3, 0x3

    mul-int/lit8 v5, p1, 0x2

    shl-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2839
    .local v0, bitSetMask:Ljava/lang/Long;
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2842
    .local v2, simLockState:Ljava/lang/Long;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sim_lock_state_setting"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2845
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2847
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sim_lock_state_setting"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2853
    :goto_0
    return-void

    .line 2849
    :catch_0
    move-exception v1

    .line 2850
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PhoneApp"

    const-string v4, "clearSimSettingFlag exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertTTYmodeToRadio(I)I
    .locals 1
    .parameter "ttyMode"

    .prologue
    .line 2519
    const/4 v0, 0x0

    .line 2521
    .local v0, radioMode:I
    packed-switch p1, :pswitch_data_0

    .line 2529
    const/4 v0, 0x0

    .line 2532
    :goto_0
    return v0

    .line 2525
    :pswitch_0
    const/4 v0, 0x1

    .line 2526
    goto :goto_0

    .line 2521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    return-object v0
.end method

.method static createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

    const/4 v2, 0x0

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1218
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1183
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1085

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1187
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2
    .parameter "showDialpad"

    .prologue
    .line 1206
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1207
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1208
    return-object v0
.end method

.method static createVTInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2611
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2612
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2613
    return-object v0
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 3125
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCallerRecordInfos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Recorder$CallerRecordInfo;

    .line 3126
    .local v0, cri:Lcom/android/phone/Recorder$CallerRecordInfo;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallerRecordInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/phone/Recorder$CallerRecordInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3128
    .end local v0           #cri:Lcom/android/phone/Recorder$CallerRecordInfo;
    :cond_0
    return-void
.end method

.method static getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 1222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1225
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1239
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 1135
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1142
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 1230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1233
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 2478
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2479
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 2480
    const-string v5, "PhoneApp"

    const-string v6, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :goto_0
    return-void

    .line 2482
    :cond_0
    const-string v5, "PhoneApp"

    const-string v6, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    const/4 v4, 0x0

    .line 2487
    .local v4, ttymode:I
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2488
    iget v4, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 2490
    :cond_1
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2493
    .local v3, ttyModeChanged:Landroid/content/Intent;
    const-string v6, "ttyEnabled"

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2494
    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2497
    packed-switch v4, :pswitch_data_0

    .line 2509
    const-string v2, "tty_off"

    .line 2512
    .local v2, audioTtyMode:Ljava/lang/String;
    :goto_2
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2513
    .local v1, audioManager:Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tty_mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2514
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setTtyMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2493
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2499
    :pswitch_0
    const-string v2, "tty_full"

    .line 2500
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 2502
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :pswitch_1
    const-string v2, "tty_vco"

    .line 2503
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 2505
    .end local v2           #audioTtyMode:Ljava/lang/String;
    :pswitch_2
    const-string v2, "tty_hco"

    .line 2506
    .restart local v2       #audioTtyMode:Ljava/lang/String;
    goto :goto_2

    .line 2497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2399
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2401
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 2402
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 2403
    .local v1, state:I
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(II)V

    .line 2405
    .end local v1           #state:I
    :cond_0
    return-void
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 2536
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2538
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 2539
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2547
    .local v1, m:Landroid/os/Message;
    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2548
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2549
    return-void
.end method

.method private initForNewRadioTechnology()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1808
    const-string v4, "PhoneApp"

    const-string v5, "initForNewRadioTechnology..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1812
    new-instance v4, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v4}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1813
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1815
    :cond_0
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1817
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v4, :cond_1

    .line 1818
    new-instance v4, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v4}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1820
    :cond_1
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v4, :cond_2

    .line 1821
    new-instance v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v4}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1823
    :cond_2
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v4, :cond_3

    .line 1824
    new-instance v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v4}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1826
    :cond_3
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v4, :cond_4

    .line 1827
    new-instance v4, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v4}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1834
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1835
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1841
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v4, :cond_5

    .line 1843
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothHeadsetPhone;->updateBtHandsfreeAfterRadioTechnologyChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v4, :cond_6

    .line 1849
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 1854
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1855
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 1856
    .local v2, sim1Gemini:Lcom/android/internal/telephony/IccCard;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 1857
    .local v3, sim2Gemini:Lcom/android/internal/telephony/IccCard;
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    invoke-interface {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1858
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x15

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1866
    return-void

    .line 1831
    .end local v1           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #sim1Gemini:Lcom/android/internal/telephony/IccCard;
    .end local v3           #sim2Gemini:Lcom/android/internal/telephony/IccCard;
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_0

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 8
    .parameter "channel"

    .prologue
    const/4 v3, -0x1

    .line 3041
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 3042
    .local v6, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 3043
    .local v1, tChannelId:I
    const/4 v7, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v7

    .line 3045
    return-object v6
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    .line 1780
    const-string v3, "PhoneApp"

    const-string v4, "onMMIComplete()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 1782
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    .line 1784
    .local v2, state:Lcom/android/internal/telephony/MmiCode$State;
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v2, v3, :cond_0

    .line 1785
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1786
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone.mmi"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1790
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-static {v3, v4, v1, v5, v5}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1791
    return-void
.end method

.method private onMMIComplete2(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 1794
    const-string v0, "PhoneApp"

    const-string v1, "onMMIComplete2()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 1796
    .local v2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v7

    .line 1798
    .local v7, state:Lcom/android/internal/telephony/MmiCode$State;
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v7, v0, :cond_0

    .line 1799
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1800
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "com.android.phone.mmi"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    invoke-virtual {p0, v6}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1804
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v5, 0x1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->displayMMICompleteExt(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;I)V

    .line 1805
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1941
    sget-object v2, Lcom/android/phone/PhoneApp$4;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1959
    :cond_0
    :goto_0
    return v0

    .line 1947
    :pswitch_0
    if-ne p0, v4, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1956
    :pswitch_1
    if-eq p0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 1941
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCallRecord(Lcom/android/phone/Recorder$CallerRecordInfo;)V
    .locals 5
    .parameter "callerRecordInfo"

    .prologue
    .line 3091
    if-eqz p1, :cond_0

    .line 3092
    iget-object v1, p1, Lcom/android/phone/Recorder$CallerRecordInfo;->mPhoneNumber:Ljava/lang/String;

    .line 3093
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCallerRecordInfos:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3094
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCallerRecordInfos:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Recorder$CallerRecordInfo;

    .line 3095
    .local v0, cri:Lcom/android/phone/Recorder$CallerRecordInfo;
    iget-object v2, p1, Lcom/android/phone/Recorder$CallerRecordInfo;->mRecordPath:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/Recorder$CallerRecordInfo;->mRecordPath:Ljava/lang/String;

    .line 3102
    .end local v0           #cri:Lcom/android/phone/Recorder$CallerRecordInfo;
    .end local v1           #phoneNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3097
    .restart local v1       #phoneNumber:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCallerRecordInfos:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3098
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCallRecord , key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callerRecordInfo ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method addCallSync()V
    .locals 21

    .prologue
    .line 2732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 2733
    .local v15, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 2735
    .local v12, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v14, 0x0

    .line 2736
    .local v14, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .line 2737
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v6, 0x2

    .line 2738
    .local v6, callType:I
    const/4 v10, 0x0

    .line 2739
    .local v10, simId:I
    const/4 v11, 0x0

    .line 2742
    .local v11, isVideo:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 2743
    .local v17, phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/16 v18, 0x0

    .line 2744
    .local v18, simInfo:Landroid/provider/Telephony$SIMInfo;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_4

    .line 2745
    const/4 v10, 0x1

    .line 2749
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v3, :cond_1

    .line 2750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v10}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v18

    .line 2751
    :cond_1
    if-eqz v18, :cond_5

    .line 2752
    move-object/from16 v0, v18

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    long-to-int v10, v3

    .line 2757
    :goto_1
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_7

    .line 2758
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    .line 2759
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Connection;

    .line 2760
    .local v13, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3, v13}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 2762
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2763
    const/4 v6, 0x1

    .line 2764
    :cond_3
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2765
    const/4 v11, 0x1

    .line 2768
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5, v13, v2}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v9, v0

    invoke-static/range {v2 .. v11}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;

    goto :goto_2

    .line 2746
    .end local v13           #c:Lcom/android/internal/telephony/Connection;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 2747
    const/4 v10, 0x0

    goto :goto_0

    .line 2754
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 2767
    .restart local v13       #c:Lcom/android/internal/telephony/Connection;
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 2774
    .end local v13           #c:Lcom/android/internal/telephony/Connection;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_b

    .line 2775
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    .line 2776
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Connection;

    .line 2777
    .restart local v13       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3, v13}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 2779
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2780
    const/4 v6, 0x1

    .line 2781
    :cond_9
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2782
    const/4 v11, 0x1

    .line 2785
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5, v13, v2}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v9, v0

    invoke-static/range {v2 .. v11}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;

    goto :goto_4

    .line 2784
    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    .line 2790
    .end local v13           #c:Lcom/android/internal/telephony/Connection;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_b
    return-void
.end method

.method authenticateAgainstCachedSimPin(Ljava/lang/String;)Z
    .locals 1
    .parameter "pin"

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCallRecordCache()V
    .locals 1

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCallerRecordInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3122
    return-void
.end method

.method clearInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 1286
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearInCallScreenInstance(), inCallScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-ne v0, p1, :cond_0

    .line 1293
    const-string v0, "PhoneApp"

    const-string v1, "same InCallScreen instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 1296
    :cond_0
    return-void
.end method

.method public clearInCallScreenMode()V
    .locals 2

    .prologue
    .line 2447
    const-string v0, "PhoneApp"

    const-string v1, "- clearInCallScreenMode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 2451
    :cond_0
    return-void
.end method

.method public clearOtaState()V
    .locals 2

    .prologue
    .line 2427
    const-string v0, "PhoneApp"

    const-string v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 2430
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 2431
    const-string v0, "PhoneApp"

    const-string v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_0
    return-void
.end method

.method public createPhoneEndIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 2859
    const/4 v0, 0x0

    .line 2866
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2867
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Valid latestActiveCallOrigin("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") was found. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Go back to the previous screen."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2874
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.android.contacts"

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v3, v3, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v0

    .line 2878
    .end local v0           #intent:Landroid/content/Intent;
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    return-object v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    move-object v1, v0

    .end local v0           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2576
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2577
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Valid latestActiveCallOrigin("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v3, v3, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") was found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Go back to the previous screen."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2584
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2590
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 2587
    :cond_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current latestActiveCallOrigin ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v3, v3, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not valid. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Just use CallLog as a default destination."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method dismissCallScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1334
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_1

    .line 1344
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1347
    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneApp;->displayCallScreen(Z)V

    .line 1349
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1358
    :goto_0
    return-void

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0

    .line 1356
    :cond_2
    sput v2, Lcom/android/phone/InCallUiState;->mLastInCallScreenStatus:I

    goto :goto_0
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    .line 2437
    const-string v0, "PhoneApp"

    const-string v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 2440
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 2441
    const-string v0, "PhoneApp"

    const-string v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_0
    return-void
.end method

.method displayCallScreen(Z)V
    .locals 6
    .parameter "isVoiceOrVTCall"

    .prologue
    .line 1246
    const-string v2, "PhoneApp"

    const-string v3, "displayCallScreen()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    sget-boolean v2, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v2, :cond_0

    .line 1251
    const-string v2, "PhoneApp"

    const-string v3, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "stack dump"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    :goto_0
    return-void

    .line 1258
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1259
    .local v1, intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_0

    .line 1258
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->createVTInCallIntent()Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 1260
    :catch_0
    move-exception v0

    .line 1264
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object v0
.end method

.method public getCallRecorFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 3108
    const/4 v0, 0x0

    .line 3109
    .local v0, cri:Lcom/android/phone/Recorder$CallerRecordInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3110
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCallerRecordInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cri:Lcom/android/phone/Recorder$CallerRecordInfo;
    check-cast v0, Lcom/android/phone/Recorder$CallerRecordInfo;

    .line 3111
    .restart local v0       #cri:Lcom/android/phone/Recorder$CallerRecordInfo;
    if-eqz v0, :cond_0

    .line 3112
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallRecorFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/phone/Recorder$CallerRecordInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCallerRecordInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3114
    iget-object v1, v0, Lcom/android/phone/Recorder$CallerRecordInfo;->mRecordPath:Ljava/lang/String;

    .line 3117
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInCallScreen()Lcom/android/phone/InCallScreen;
    .locals 1

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method getInCallScreenInstance()Lcom/android/phone/InCallScreen;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPUKEntryProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method getRecordTime()J
    .locals 2

    .prologue
    .line 3085
    iget-wide v0, p0, Lcom/android/phone/PhoneApp;->mRecordTime:J

    return-wide v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method handleOtaspDisconnect()V
    .locals 2

    .prologue
    .line 1385
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_0

    .line 1390
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :goto_0
    return-void

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_0
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1367
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaspEvent(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_0

    .line 1372
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method handleTimeout(I)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 1507
    monitor-enter p0

    .line 1508
    :try_start_0
    const-string v0, "PhoneApp"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget v0, p0, Lcom/android/phone/PhoneApp;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLockForDisconnect:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1512
    :cond_0
    monitor-exit p0

    .line 1513
    return-void

    .line 1512
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBTConnected()Z
    .locals 1

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    .line 3137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBluetoothHeadsetAudioOn()Z
    .locals 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableTTY()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    return v0
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1875
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method isIpCall()Z
    .locals 1

    .prologue
    .line 3070
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsIpCall:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 4

    .prologue
    .line 2408
    const/4 v0, 0x0

    .line 2409
    .local v0, otaCallActive:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 2410
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 2412
    :cond_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInActiveState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    return v0
.end method

.method public isOtaCallInEndState()Z
    .locals 4

    .prologue
    .line 2417
    const/4 v0, 0x0

    .line 2418
    .local v0, otaCallEnded:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 2419
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    .line 2421
    :cond_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInEndState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return v0
.end method

.method public isQVGA()Z
    .locals 6

    .prologue
    const/16 v5, 0x140

    const/16 v4, 0xf0

    .line 2595
    const/4 v1, 0x0

    .line 2596
    .local v1, retval:Z
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2597
    .local v0, dm:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2598
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2599
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v3, v5, :cond_0

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v3, v4, :cond_1

    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v3, v5, :cond_2

    .line 2600
    :cond_1
    const/4 v1, 0x1

    .line 2601
    :cond_2
    return v1
.end method

.method public isRejectAllSIPCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2826
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sip_call_auto_reject_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2831
    :goto_0
    return v1

    .line 2830
    :catch_0
    move-exception v0

    .line 2831
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isRejectAllVideoCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2815
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "video_call_auto_reject_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2820
    :goto_0
    return v1

    .line 2819
    :catch_0
    move-exception v0

    .line 2820
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isRejectAllVoiceCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2804
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.phone_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "voice_call_auto_reject_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2809
    :goto_0
    return v1

    .line 2808
    :catch_0
    move-exception v0

    .line 2809
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1315
    const/4 v0, 0x0

    .line 1316
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isShowingCallScreenForProximity()Z
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method public isVTActive()Z
    .locals 2

    .prologue
    .line 2659
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 2660
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2661
    const/4 v0, 0x1

    .line 2671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVTIdle()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2622
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 2637
    :goto_0
    return v0

    .line 2627
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    if-ne v3, v0, :cond_1

    move v0, v1

    .line 2628
    goto :goto_0

    .line 2629
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2630
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 2631
    goto :goto_0

    .line 2633
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2634
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 2635
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2637
    goto :goto_0
.end method

.method public isVTRinging()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2678
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 2695
    :goto_0
    return v0

    .line 2682
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2683
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2684
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2695
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 1105
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 1106
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 1111
    :goto_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCurrentLocale:Ljava/util/Locale;

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1128
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1129
    return-void

    .line 1108
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 19

    .prologue
    .line 779
    const-string v14, "PhoneApp"

    const-string v15, "onCreate()..."

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v14, "vold.decrypt"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 783
    .local v13, state:Ljava/lang/String;
    const-string v14, "gsm.phone.created"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, ""

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "trigger_restart_framework"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 784
    :cond_0
    const-string v14, "PhoneApp"

    const-string v15, "set System Property gsm.phone.created = true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v14, "gsm.phone.created"

    const-string v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sim_lock_state_setting"

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 790
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 795
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110030

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    sput-boolean v14, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 802
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v14, :cond_8

    .line 803
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), start to make default phone"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 806
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), make default phone complete"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 810
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 812
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 813
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V

    .line 820
    invoke-static/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 823
    invoke-static/range {p0 .. p0}, Lcom/android/phone/QuickBackToInCallScreen;->getInstance(Lcom/android/phone/PhoneApp;)Lcom/android/phone/QuickBackToInCallScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

    .line 825
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), start to new phone interface"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 829
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 831
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 833
    .local v9, phoneType:I
    const/4 v14, 0x2

    if-ne v9, v14, :cond_2

    .line 835
    new-instance v14, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v14}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v14}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 839
    :cond_2
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), start to get BT default adapter"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 849
    new-instance v14, Landroid/content/Intent;

    const-class v15, Lcom/android/phone/BluetoothPhoneService;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 850
    new-instance v14, Landroid/content/Intent;

    const-class v15, Lcom/android/phone/BluetoothPhoneService;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/phone/PhoneApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 858
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 861
    const-string v14, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    .line 862
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    const v15, 0x3000001a

    const-string v16, "PhoneApp"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 865
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    const v15, 0x2000001a

    const-string v16, "PhoneApp"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mWakeLockForDisconnect:Landroid/os/PowerManager$WakeLock;

    .line 867
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    const/4 v15, 0x1

    const-string v16, "PhoneApp"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mPartialWakeLockForPsensor:Landroid/os/PowerManager$WakeLock;

    .line 869
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), new partial wakelock"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    const v15, 0x20000001

    const-string v16, "PhoneApp"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 875
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 877
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    const/16 v15, 0x20

    const-string v16, "PhoneApp"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 880
    :cond_3
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onCreate: mProximityWakeLock: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 884
    new-instance v14, Lcom/android/phone/AccelerometerListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 887
    :cond_4
    const-string v14, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 891
    const-string v14, "power"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 897
    invoke-static/range {p0 .. p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    .line 900
    invoke-static/range {p0 .. p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 906
    invoke-static/range {p0 .. p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 912
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), new callnotifier"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    new-instance v16, Lcom/android/phone/CallLogAsync;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/CallLogAsync;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 940
    const/4 v14, 0x1

    if-ne v9, v14, :cond_5

    .line 942
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x34

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x37

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 944
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 945
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x36

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 952
    :cond_5
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), initialize connection handler"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 958
    const-string v14, "TTY"

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090004

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 964
    :goto_1
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), new intentfilter"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v7, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v7, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 969
    .local v7, intentFilter:Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    const-string v14, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    const-string v14, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    const-string v14, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 974
    const-string v14, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 975
    const-string v14, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 976
    const-string v14, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 977
    const-string v14, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 978
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 979
    const-string v14, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 980
    const-string v14, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 981
    const-string v14, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v14, :cond_6

    .line 983
    const-string v14, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 985
    :cond_6
    const-string v14, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 986
    const-string v14, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 987
    const-string v14, "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 988
    const-string v14, "com.android.phone.MISSEDCALL_DELETE_INTENT"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    const-string v14, "out_going_call_to_phone_app"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 991
    const-string v14, "com.android.phone.NETWORK_MODE_CHANGE"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 992
    const-string v14, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 993
    const-string v14, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    const-string v14, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    sget-object v14, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    const-string v14, "android.intent.action.RADIO_OFF"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string v14, "com.mtk.ACTION_MODEM_STATE"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1003
    new-instance v8, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v8, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1013
    const-string v14, "com.android.phone_preferences"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1015
    .local v12, settings:Landroid/content/SharedPreferences;
    const-string v14, "config_reset_cbnv_value"

    const/4 v15, 0x1

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1016
    .local v4, bResetCbNvValue:Z
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "wcz==>bResetCbNvValue:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-eqz v4, :cond_7

    .line 1018
    const-string v14, "PhoneApp"

    const-string v15, "bResetCbNvValue is true, need customize cb channels"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v5, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v5, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v5, customizeCbFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mCustomizeCbReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1025
    .end local v5           #customizeCbFilter:Landroid/content/IntentFilter;
    :cond_7
    const-string v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1026
    .local v2, am:Landroid/media/AudioManager;
    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-class v16, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 1030
    const v14, 0x7f050018

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1032
    const v14, 0x7f050004

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1040
    .end local v2           #am:Landroid/media/AudioManager;
    .end local v4           #bResetCbNvValue:Z
    .end local v7           #intentFilter:Landroid/content/IntentFilter;
    .end local v8           #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    .end local v9           #phoneType:I
    .end local v12           #settings:Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v14}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1041
    new-instance v14, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v14}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1042
    new-instance v14, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v14}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1043
    new-instance v14, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v14}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1044
    new-instance v14, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v14}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1048
    :cond_9
    const-string v14, "content://icc/adn"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 1051
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 1060
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v14, :cond_a

    .line 1061
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "preferred_tty_mode"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 1065
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xe

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1068
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090005

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1069
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "hearing_aid"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1072
    .local v6, hac:I
    const-string v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1073
    .local v3, audioManager:Landroid/media/AudioManager;
    const-string v15, "HACSetting"

    if-eqz v6, :cond_e

    const-string v14, "ON"

    :goto_2
    invoke-virtual {v3, v15, v14}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    .end local v3           #audioManager:Landroid/media/AudioManager;
    .end local v6           #hac:I
    :cond_b
    invoke-static {}, Lcom/android/phone/SimAssociateHandler;->getInstance()Lcom/android/phone/SimAssociateHandler;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/SimAssociateHandler;->prepair()V

    .line 1083
    invoke-static {}, Lcom/android/phone/SimAssociateHandler;->getInstance()Lcom/android/phone/SimAssociateHandler;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/SimAssociateHandler;->load()V

    .line 1084
    new-instance v14, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v14}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 1085
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 1090
    new-instance v10, Landroid/content/IntentFilter;

    const-string v14, "action.unlock.pinpuk.request"

    invoke-direct {v10, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v10, requestPINPUKIntenFitler:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneApp;->mRequestUnlockPINPUKReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1093
    const-string v14, "PhoneApp"

    const-string v15, "onCreate(), exit."

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v14, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mCurrentLocale:Ljava/util/Locale;

    .line 1101
    return-void

    .line 855
    .end local v10           #requestPINPUKIntenFitler:Landroid/content/IntentFilter;
    .restart local v9       #phoneType:I
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/PhoneApp;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    goto/16 :goto_0

    .line 961
    :cond_d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    goto/16 :goto_1

    .line 1073
    .end local v9           #phoneType:I
    .restart local v3       #audioManager:Landroid/media/AudioManager;
    .restart local v6       #hac:I
    :cond_e
    const-string v14, "OFF"

    goto :goto_2
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 2796
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2797
    const-string v0, "PhoneApp"

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    invoke-static {}, Lcom/android/phone/HyphonManager;->getInstance()Lcom/android/phone/HyphonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/HyphonManager;->onDestroy()V

    .line 2799
    return-void
.end method

.method public orientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1726
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1727
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1728
    return-void
.end method

.method pokeUserActivity()V
    .locals 4

    .prologue
    .line 1590
    const-string v0, "PhoneApp"

    const-string v1, "pokeUserActivity()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1592
    return-void
.end method

.method proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requestAudioFocus(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x2

    .line 2883
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2884
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mAudioManager:Landroid/media/AudioManager;

    .line 2886
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2888
    .local v0, audioMode:I
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v1, :cond_2

    .line 2889
    const-string v1, "PhoneApp"

    const-string v2, " CALL_STATE_RINGING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2904
    :cond_1
    :goto_0
    return-void

    .line 2894
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v1, :cond_3

    .line 2895
    const-string v1, "PhoneApp"

    const-string v2, " CALL_STATE_OFFHOOK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 2900
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v1, :cond_1

    .line 2901
    const-string v1, "PhoneApp"

    const-string v2, " CALL_STATE_IDLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .locals 3
    .parameter "ws"

    .prologue
    .line 1443
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWakeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    monitor-enter p0

    .line 1445
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_2

    .line 1446
    sget-object v0, Lcom/android/phone/PhoneApp$4;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1466
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1474
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1476
    :cond_2
    monitor-exit p0

    .line 1477
    return-void

    .line 1450
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1451
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1476
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1458
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1459
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1446
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setBeginningCall(Z)V
    .locals 1
    .parameter "beginning"

    .prologue
    .line 1602
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1604
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1605
    return-void
.end method

.method setCachedSimPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    .line 1279
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 1283
    return-void
.end method

.method setIpCall(Z)V
    .locals 0
    .parameter "ipcall"

    .prologue
    .line 3074
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsIpCall:Z

    .line 3075
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 1
    .parameter "callOrigin"

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    .line 2568
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 1411
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 1428
    return-void
.end method

.method setRecordTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 3082
    iput-wide p1, p0, Lcom/android/phone/PhoneApp;->mRecordTime:J

    .line 3083
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 386
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRestoreMuteOnInCallResume, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 388
    return-void
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method public touchAnswerVTCall()V
    .locals 3

    .prologue
    .line 2700
    const-string v0, "PhoneApp"

    const-string v1, "touchAnswerVTCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2703
    const-string v0, "PhoneApp"

    const-string v1, "touchAnswerVTCall() : the InCallScreen Instance is null , so cannot answer incoming VT call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :goto_0
    return-void

    .line 2707
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2708
    const-string v0, "PhoneApp"

    const-string v1, "touchAnswerVTCall() : there is no Ringing VT call , so return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2712
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method updateBluetoothIndication(Z)V
    .locals 3
    .parameter "forceUiUpdate"

    .prologue
    .line 1904
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 1907
    if-eqz p1, :cond_1

    .line 1910
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 1911
    :cond_0
    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1916
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1917
    return-void
.end method

.method updateInCallScreen()V
    .locals 2

    .prologue
    .line 2468
    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 2475
    :cond_0
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1735
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_2

    .line 1736
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1737
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_0

    .line 1738
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 1739
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1740
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v0, :cond_1

    .line 1742
    iput v2, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1743
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 1746
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1752
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2

    .line 1753
    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneState: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1755
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1758
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    .line 1759
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v3, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateActivityHiberarchy(Z)V

    .line 1761
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1743
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1755
    goto :goto_1

    :cond_6
    move v1, v2

    .line 1759
    goto :goto_2
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1637
    const/4 v1, 0x0

    .line 1639
    .local v1, isRingingWhenActive:Z
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateProximitySensorMode: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLockForPsensor:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_2

    .line 1642
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLockForPsensor:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 1643
    :try_start_0
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v6, :cond_0

    iget-boolean v6, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v6, :cond_7

    .line 1644
    :cond_0
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLockForPsensor:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1645
    const-string v6, "sky"

    const-string v7, "<<<<<<<<<<<new Phone APK>>>>>>>>>>>   acquire()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLockForPsensor:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1654
    :cond_1
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1656
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1657
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 1661
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isBluetoothHeadsetAudioOn()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v6, :cond_8

    :cond_3
    move v2, v3

    .line 1667
    .local v2, screenOnImmediately:Z
    :goto_1
    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isVTIdle()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_4
    move v2, v3

    .line 1679
    :goto_2
    const-string v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProximitySensorMode: mBeginningCall = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const-string v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProximitySensorMode: screenOnImmediately = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_a

    move v1, v3

    .line 1689
    :goto_3
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProximitySensorMode: isRingingWhenActive = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v3, :cond_5

    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-nez v3, :cond_5

    if-eqz v1, :cond_c

    :cond_5
    if-nez v2, :cond_c

    .line 1696
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1697
    const-string v3, "PhoneApp"

    const-string v4, "updateProximitySensorMode: acquiring..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1721
    :goto_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1723
    .end local v2           #screenOnImmediately:Z
    :cond_6
    return-void

    .line 1649
    :cond_7
    :try_start_2
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLockForPsensor:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1650
    const-string v6, "sky"

    const-string v7, "<<<<<<<<<<<new Phone APK>>>>>>>>>>>   release()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLockForPsensor:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1654
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_8
    move v2, v4

    .line 1661
    goto/16 :goto_1

    .restart local v2       #screenOnImmediately:Z
    :cond_9
    move v2, v4

    .line 1667
    goto/16 :goto_2

    :cond_a
    move v1, v4

    .line 1685
    goto :goto_3

    .line 1700
    :cond_b
    :try_start_3
    const-string v3, "PhoneApp"

    const-string v4, "updateProximitySensorMode: lock already held."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1721
    .end local v2           #screenOnImmediately:Z
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1705
    .restart local v2       #screenOnImmediately:Z
    :cond_c
    :try_start_4
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1706
    const-string v3, "PhoneApp"

    const-string v4, "updateProximitySensorMode: releasing..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v0, 0x0

    .line 1714
    .local v0, flags:I
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_4

    .line 1717
    .end local v0           #flags:I
    :cond_d
    const-string v3, "PhoneApp"

    const-string v4, "updateProximitySensorMode: lock already released."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4
.end method

.method updateWakeState()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1526
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    .line 1531
    .local v7, state:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    .line 1536
    .local v3, isShowingCallScreen:Z
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v9

    .line 1546
    .local v0, isDialerOpened:Z
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v4, v9

    .line 1554
    .local v4, isSpeakerInUse:Z
    :goto_1
    const-string v8, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWakeState: callscreen "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dialer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", speaker "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_3

    move v2, v9

    .line 1567
    .local v2, isRinging:Z
    :goto_2
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v11, :cond_4

    move v1, v9

    .line 1571
    .local v1, isDialing:Z
    :goto_3
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v3, :cond_5

    move v6, v9

    .line 1573
    .local v6, showingDisconnectedConnection:Z
    :goto_4
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-eqz v6, :cond_6

    :cond_0
    move v5, v9

    .line 1574
    .local v5, keepScreenOn:Z
    :goto_5
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWakeState: keepScreenOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (isRinging "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isDialing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", showingDisc "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    if-eqz v5, :cond_7

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_6
    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1580
    return-void

    .end local v0           #isDialerOpened:Z
    .end local v1           #isDialing:Z
    .end local v2           #isRinging:Z
    .end local v4           #isSpeakerInUse:Z
    .end local v5           #keepScreenOn:Z
    .end local v6           #showingDisconnectedConnection:Z
    :cond_1
    move v0, v10

    .line 1536
    goto/16 :goto_0

    .restart local v0       #isDialerOpened:Z
    :cond_2
    move v4, v10

    .line 1546
    goto/16 :goto_1

    .restart local v4       #isSpeakerInUse:Z
    :cond_3
    move v2, v10

    .line 1564
    goto :goto_2

    .restart local v2       #isRinging:Z
    :cond_4
    move v1, v10

    .line 1567
    goto :goto_3

    .restart local v1       #isDialing:Z
    :cond_5
    move v6, v10

    .line 1571
    goto :goto_4

    .restart local v6       #showingDisconnectedConnection:Z
    :cond_6
    move v5, v10

    .line 1573
    goto :goto_5

    .line 1579
    .restart local v5       #keepScreenOn:Z
    :cond_7
    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_6
.end method

.method wakeUpScreen()V
    .locals 3

    .prologue
    .line 1484
    monitor-enter p0

    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_0

    .line 1486
    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1489
    :cond_0
    monitor-exit p0

    .line 1490
    return-void

    .line 1489
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method wakeUpScreenForDisconnect(I)V
    .locals 6
    .parameter "holdMs"

    .prologue
    .line 1493
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1494
    .local v1, pm:Landroid/os/PowerManager;
    monitor-enter p0

    .line 1495
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v3, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1496
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wakeUpScreenForDisconnect("

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

    .line 1497
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mWakeLockForDisconnect:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1498
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1499
    iget v2, p0, Lcom/android/phone/PhoneApp;->mWakelockSequence:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/PhoneApp;->mWakelockSequence:I

    .line 1500
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    iget v4, p0, Lcom/android/phone/PhoneApp;->mWakelockSequence:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1501
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1503
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit p0

    .line 1504
    return-void

    .line 1503
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
