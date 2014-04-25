.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/phone/PhoneRecorderHandler$Listener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$30;,
        Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;,
        Lcom/android/phone/InCallScreen$PostDrawListener;,
        Lcom/android/phone/InCallScreen$InCallAudioMode;,
        Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    }
.end annotation


# static fields
.field private static ACTION_LOCKED:Ljava/lang/String; = null

.field public static final ACTION_UNDEFINED:Ljava/lang/String; = "com.android.phone.InCallScreen.UNDEFINED"

.field private static ACTION_UNLOCK:Ljava/lang/String; = null

.field private static final ADD_VOICEMAIL_NUMBER:I = 0x6a

.field static final AUTO_RETRY_OFF:I = 0x0

.field static final AUTO_RETRY_ON:I = 0x1

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0x0

.field private static final CRSS_SUPP_SERVICE:I = 0x8d

.field private static final CRSS_SUPP_SERVICE2:I = 0x91

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFAULT_SIM:I = 0x2

.field static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field static final DELAYED_CLEANUP_AFTER_DISCONNECT2:I = 0x93

.field private static final DELAY_AUTO_ANSWER:I = 0x7d

.field private static final DELAY_TO_FINISH_INCALLSCREEN:I = 0xcb

.field private static final DELAY_TO_SHOW_MMI_INIT:I = 0xc9

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x6b

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x67

.field private static final EVENT_HIDE_PROVIDER_OVERLAY:I = 0x79

.field private static final EVENT_PAUSE_DIALOG_COMPLETE:I = 0x78

.field static final EXTRA_FORCE_SPEAKER_ON:Ljava/lang/String; = "com.android.phone.extra.FORCE_SPEAKER_ON"

.field static final EXTRA_GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

.field static final EXTRA_GATEWAY_URI:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_URI"

.field public static final EXTRA_SEND_EMPTY_FLASH:Ljava/lang/String; = "com.android.phone.extra.SEND_EMPTY_FLASH"

.field private static final FAKE_INCOMING_CALL_WIDGET:I = 0xa0

.field private static final IMAGE_BOUND_SIZE:I = 0x3c

.field static final KEY_EMERGENCY_DIALER:Ljava/lang/String; = "com.android.phone.EmergencyDialer"

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreen"

.field private static final MSG_START_RECORD:I = 0x0

.field private static final MSG_STOP_RECORD:I = 0x1

.field private static final PAUSE_PROMPT_DIALOG_TIMEOUT:I = 0x7d0

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x73

.field private static final PHONE_DISCONNECT:I = 0x66

.field private static final PHONE_DISCONNECT2:I = 0x90

.field private static final PHONE_INCOMING_RING:I = 0x7b

.field private static final PHONE_INCOMING_RING2:I = 0x95

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x7c

.field private static final PHONE_NEW_RINGING_CONNECTION2:I = 0x96

.field private static final PHONE_RECORD_STATE_UPDATE:I = 0x82

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field private static final PHONE_STATE_CHANGED2:I = 0x8f

.field private static final PIN_REQUIRED:Ljava/lang/String; = "PIN_REQUIRED"

.field private static final POST_ON_DIAL_CHARS:I = 0x68

.field private static final POST_ON_DIAL_CHARS2:I = 0x92

.field private static final PROVIDER_OVERLAY_TIMEOUT:I = 0x1388

.field private static final PUK_REQUIRED:Ljava/lang/String; = "PUK_REQUIRED"

.field private static final REQUEST_CLOSE_OTA_FAILURE_NOTICE:I = 0x77

.field private static final REQUEST_CLOSE_SPC_ERROR_NOTICE:I = 0x76

.field private static final REQUEST_UPDATE_BLUETOOTH_INDICATION:I = 0x72

.field private static final REQUEST_UPDATE_SCREEN:I = 0x7a

.field private static final SEND_MESSAGE:I = 0x1

.field private static final SET_IGNORE_USER_ACTIVITY:I = 0x7e

.field static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final SUPP_SERVICE_FAILED:I = 0x6e

.field private static final SUPP_SERVICE_FAILED2:I = 0x8e

.field private static final SUPP_SERVICE_NOTIFICATION:I = 0x8c

.field private static final SUPP_SERVICE_NOTIFICATION2:I = 0x94

.field static final SUP_TYPE:I = 0x91

.field private static final VDBG:Z = false

.field private static final VT_EM_AUTO_ANSWER:I = 0xca

.field private static final VT_VOICE_ANSWER_OVER:I = 0xa1

.field private static final WILD_PROMPT_CHAR_ENTERED:I = 0x69

.field private static mLocaleChanged:Z

.field private static mPreHeadsetPlugState:I

.field private static prevPhonenums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBackgroundLastState:Lcom/android/internal/telephony/Call$State;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCallCard:Lcom/android/phone/BaiduCallCard;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCanDismissDialog:Landroid/app/AlertDialog;

.field private final mDMLockReceiver:Landroid/content/BroadcastReceiver;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mForegroundLastState:Lcom/android/internal/telephony/Call$State;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInCallControlState:Lcom/android/phone/InCallControlState;

.field private mInCallMenuState:Lcom/android/phone/InCallMenuState;

.field private mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

.field private mInVoiceAnswerVideoCall:Z

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field private final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mOnAnswerandEndCall:Z

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPostDrawListener:Lcom/android/phone/InCallScreen$PostDrawListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordDiskCheck:Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;

.field private mRecordDrawable:Landroid/graphics/drawable/Drawable;

.field private mRecordStart:Z

.field private mRecordStartTime:J

.field private mRecorderServiceIntent:Landroid/content/Intent;

.field private mRegisteredForPhoneStates:Z

.field private mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mRingingLastState:Lcom/android/internal/telephony/Call$State;

.field private mShowStatusIndication:Z

.field private mSimCollisionDialog:Landroid/app/AlertDialog;

.field private mSpeechEnabled:Z

.field private mStopRecordDrawable:Landroid/graphics/drawable/Drawable;

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSwappingCalls:Z

.field private mTimePassed:J

.field private mTimerHandler:Landroid/os/Handler;

.field private mUpdateTimer:Ljava/lang/Runnable;

.field private mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

.field private mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

.field private mVTVoiceAnswerTimer:Ljava/util/Timer;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    .line 271
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/InCallScreen;->mPreHeadsetPlugState:I

    .line 791
    sput-boolean v1, Lcom/android/phone/InCallScreen;->mLocaleChanged:Z

    .line 801
    const-string v0, "com.mediatek.dm.LAWMO_LOCK"

    sput-object v0, Lcom/android/phone/InCallScreen;->ACTION_LOCKED:Ljava/lang/String;

    .line 802
    const-string v0, "com.mediatek.dm.LAWMO_UNLOCK"

    sput-object v0, Lcom/android/phone/InCallScreen;->ACTION_UNLOCK:Ljava/lang/String;

    .line 6549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    return-void

    :cond_0
    move v0, v1

    .line 155
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 273
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mSpeechEnabled:Z

    .line 274
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    .line 309
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mForegroundLastState:Lcom/android/internal/telephony/Call$State;

    .line 310
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBackgroundLastState:Lcom/android/internal/telephony/Call$State;

    .line 311
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingLastState:Lcom/android/internal/telephony/Call$State;

    .line 376
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 377
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 378
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 383
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 387
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mOnAnswerandEndCall:Z

    .line 391
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mInVoiceAnswerVideoCall:Z

    .line 392
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    .line 393
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    .line 418
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 771
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 792
    new-instance v0, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 804
    new-instance v0, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    .line 992
    new-instance v0, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 4127
    new-instance v0, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 6928
    new-instance v0, Lcom/android/phone/InCallScreen$PostDrawListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/InCallScreen$PostDrawListener;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPostDrawListener:Lcom/android/phone/InCallScreen$PostDrawListener;

    .line 7192
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mRecordStart:Z

    .line 7193
    iput-wide v3, p0, Lcom/android/phone/InCallScreen;->mRecordStartTime:J

    .line 7194
    iput-wide v3, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    .line 7196
    new-instance v0, Lcom/android/phone/InCallScreen$28;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$28;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mUpdateTimer:Ljava/lang/Runnable;

    .line 7202
    new-instance v0, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRecordDiskCheck:Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;

    .line 7248
    new-instance v0, Lcom/android/phone/InCallScreen$29;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$29;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMICancel(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onIncomingRing()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onNewRingingConnection()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mSpeechEnabled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallControlState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/InCallScreen;Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    sput-boolean p0, Lcom/android/phone/InCallScreen;->mLocaleChanged:Z

    return p0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/phone/InCallScreen;->ACTION_LOCKED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/phone/InCallScreen;->ACTION_UNLOCK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/InCallScreen;)Lcom/android/phone/BaiduCallCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSimCollisionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterCanDismissDialog()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRecordStart:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mRecordStart:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/phone/InCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->updateRecordView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/phone/InCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->checkRecordDisk(Z)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/phone/InCallScreen;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 150
    sget v0, Lcom/android/phone/InCallScreen;->mPreHeadsetPlugState:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    sput p0, Lcom/android/phone/InCallScreen;->mPreHeadsetPlugState:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/BaiduInCallTouchUi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;)Lcom/android/phone/VTInCallScreenProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    return-object v0
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 3586
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3587
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3588
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3590
    :cond_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3591
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3593
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "show vm setting"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3596
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3597
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3598
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3599
    return-void
.end method

.method private bailOutAfterCanDismissDialog()V
    .locals 2

    .prologue
    .line 4973
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 4974
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "bailOutAfterCanDismissDialog: DISMISSING mCanDismissDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4975
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4976
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    .line 4978
    :cond_1
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "bailOutAfterCanDismissDialog(): end InCallScreen session..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4992
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 4993
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 5001
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5002
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 5004
    :cond_3
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 2

    .prologue
    .line 4939
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 4940
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4941
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4942
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4944
    :cond_1
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4958
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 4959
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 4967
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4968
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 4970
    :cond_3
    return-void
.end method

.method private canHangupAll()Z
    .locals 5

    .prologue
    .line 4161
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4162
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4163
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 4164
    .local v2, retval:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 4165
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 4166
    const/4 v2, 0x1

    .line 4170
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canHangupAll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4171
    return v2

    .line 4167
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4168
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkOtaspStateOnResume()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 6390
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v3, :cond_2

    .line 6391
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "checkOtaspStateOnResume: no OtaUtils instance; nothing to do."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    move v1, v2

    .line 6458
    :cond_1
    :goto_0
    return v1

    .line 6395
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v3, :cond_4

    .line 6399
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "checkOtaspStateOnResume: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6407
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v0

    .line 6414
    .local v0, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v3, :cond_5

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v3, :cond_7

    :cond_5
    const/4 v1, 0x1

    .line 6418
    .local v1, otaspUiActive:Z
    :goto_1
    if-eqz v1, :cond_a

    .line 6425
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/android/phone/OtaUtils;->updateUiWidgets(Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V

    .line 6429
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_8

    .line 6430
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "checkOtaspStateOnResume - in OTA Normal mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6431
    :cond_6
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_0

    .end local v1           #otaspUiActive:Z
    :cond_7
    move v1, v2

    .line 6414
    goto :goto_1

    .line 6432
    .restart local v1       #otaspUiActive:Z
    :cond_8
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_1

    .line 6434
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "checkOtaspStateOnResume - in OTA END mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6435
    :cond_9
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_0

    .line 6450
    :cond_a
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "checkOtaspStateOnResume - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6451
    :cond_b
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6453
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_1

    .line 6454
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_0
.end method

.method private checkRecordDisk(Z)V
    .locals 4
    .parameter "isStoreToSdcard"

    .prologue
    .line 7216
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7217
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->sdcardFullFlag()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->phoneMemeoryFullFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7218
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopRecord()V

    .line 7223
    :goto_0
    return-void

    .line 7220
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecordDiskCheck:Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7222
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopRecord()V

    goto :goto_0
.end method

.method private checkWhereToGo(Z)V
    .locals 9
    .parameter "isPhoneStateRestricted"

    .prologue
    .line 3756
    const/4 v2, 0x0

    .line 3757
    .local v2, GOTO_LAST_ACTIVITY:I
    const/4 v1, 0x1

    .line 3758
    .local v1, GOTO_HOME:I
    const/4 v0, 0x2

    .line 3759
    .local v0, GOTO_CALL_LOG:I
    const/4 v5, 0x0

    .line 3767
    .local v5, location:I
    const-string v6, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3768
    const/4 v5, 0x0

    .line 3772
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3773
    const/4 v5, 0x0

    .line 3776
    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 3801
    :cond_2
    :goto_0
    return-void

    .line 3779
    :pswitch_0
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "- checkWhereToGo: go to last activity..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3783
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3784
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3785
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3786
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "- checkWhereToGo: go to home screen..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3790
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_2
    if-nez p1, :cond_2

    .line 3792
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v4

    .line 3793
    .local v4, intent2:Landroid/content/Intent;
    const/high16 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3794
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.android.phone.EmergencyDialer"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3795
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3776
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cleanupAfterDisconnect(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3611
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3612
    return-void
.end method

.method private comparePhoneNumbers()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6556
    sget-object v2, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 6575
    :goto_0
    return v2

    .line 6562
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 6564
    .local v0, fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    sget-object v2, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_2

    move v2, v3

    .line 6565
    goto :goto_0

    .line 6568
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 6569
    sget-object v2, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 6570
    goto :goto_0

    .line 6571
    :cond_3
    sget-object v2, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 6572
    goto :goto_0

    .line 6568
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v2, v4

    .line 6575
    goto :goto_0
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .parameter "anchorView"

    .prologue
    .line 6839
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 6840
    .local v1, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 6841
    .local v0, menu:Landroid/view/Menu;
    const v2, 0x7f0f0003

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 6842
    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 6843
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setupMenuItems(Landroid/view/Menu;)V

    .line 6844
    return-object v1
.end method

.method private createWildPromptView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4160

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 3245
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3246
    .local v3, result:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3247
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3249
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3253
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3254
    .local v2, promptMsg:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3255
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3256
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3258
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3260
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 3261
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 3262
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3263
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3264
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 3265
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 3266
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v5, 0x1080018

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3268
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3271
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3273
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3275
    return-object v3
.end method

.method private cutTail(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "txt"

    .prologue
    const/4 v7, 0x0

    .line 7272
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 7273
    .local v3, isZN:Z
    if-eqz v3, :cond_1

    const/16 v1, 0xc

    .line 7274
    .local v1, cutLen:I
    :goto_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7287
    .end local p1
    :cond_0
    :goto_1
    return-object p1

    .line 7273
    .end local v1           #cutLen:I
    .restart local p1
    :cond_1
    const/16 v1, 0x9

    goto :goto_0

    .line 7278
    .restart local v1       #cutLen:I
    :cond_2
    const/4 v4, 0x0

    .line 7279
    .local v4, letterLength:I
    const/4 v2, 0x0

    .line 7280
    .local v2, i:I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 7281
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 7282
    .local v0, c:C
    const/16 v5, 0x4e00

    if-lt v0, v5, :cond_4

    const v5, 0x9fa5

    if-gt v0, v5, :cond_4

    add-int/lit8 v4, v4, 0x2

    .line 7284
    :goto_3
    if-lt v4, v1, :cond_5

    .line 7287
    .end local v0           #c:C
    :cond_3
    if-lt v4, v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7283
    .restart local v0       #c:C
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 7280
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private dismissAllDialogs()V
    .locals 1

    .prologue
    .line 5013
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5020
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5022
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5026
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissDialogs()V

    .line 5027
    return-void
.end method

.method private dismissDialogs()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5030
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "dismissDialogs()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5037
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 5039
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5040
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 5042
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 5044
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5045
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 5053
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 5055
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5056
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 5068
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 5070
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5071
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 5073
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    .line 5075
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5076
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 5078
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7

    .line 5079
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5080
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 5081
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5082
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 5084
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5085
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    .line 5087
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_7
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_9

    .line 5090
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 5092
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_b

    .line 5093
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5094
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5095
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 5098
    :cond_b
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSimCollisionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 5099
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSimCollisionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5100
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mSimCollisionDialog:Landroid/app/AlertDialog;

    .line 5102
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_e

    .line 5103
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5104
    :cond_d
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5105
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 5107
    :cond_e
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "dismissDialogs() done"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5108
    :cond_f
    return-void
.end method

.method private dismissProgressIndication()V
    .locals 1

    .prologue
    .line 5190
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissProgressIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5191
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 5192
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 5195
    :cond_1
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 3602
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3603
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3606
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "dontAddVoiceMailNumber: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3607
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3608
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 4

    .prologue
    .line 6238
    const-string v2, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6244
    const-string v2, "="

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6245
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    .line 6246
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 6247
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 6249
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6250
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6251
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset audio connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6263
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    return-void

    .line 6258
    :cond_1
    const-string v2, "= mBluetoothHeadset is null"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6261
    :cond_2
    const-string v2, "= mBluetoothAdapter is null; device is not BT capable"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private endInCallScreenSession(Z)V
    .locals 2
    .parameter "forceFinish"

    .prologue
    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1544
    if-eqz p1, :cond_0

    .line 1545
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1551
    :goto_0
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1552
    return-void

    .line 1549
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method private finishIfNecessory()V
    .locals 7

    .prologue
    .line 3804
    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3805
    .local v4, simState:Ljava/lang/String;
    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3806
    :cond_0
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "PIN or PUK Locked, need finish InCallScreen."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3807
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 3821
    :cond_2
    :goto_0
    return-void

    .line 3811
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3812
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 3813
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3814
    .local v2, info:Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.baseActivity.getPackageName() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3815
    :cond_5
    if-eqz v2, :cond_4

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.mediatek.oobe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3816
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private getSuppServiceMOStringId(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;
    .locals 3
    .parameter "notification"

    .prologue
    .line 2353
    const-string v0, ""

    .line 2354
    .local v0, retStr:Ljava/lang/String;
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 2386
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2389
    :goto_0
    return-object v0

    .line 2356
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0324

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2357
    goto :goto_0

    .line 2359
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0325

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2360
    goto :goto_0

    .line 2362
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0326

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2363
    goto :goto_0

    .line 2365
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0327

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2366
    goto :goto_0

    .line 2368
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0328

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2370
    goto :goto_0

    .line 2372
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0329

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2373
    goto :goto_0

    .line 2375
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2376
    goto :goto_0

    .line 2378
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2379
    goto :goto_0

    .line 2381
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2382
    goto/16 :goto_0

    .line 2354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getSuppServiceMTStringId(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;
    .locals 4
    .parameter "notification"

    .prologue
    const v3, 0x7f0b032d

    .line 2394
    const-string v0, ""

    .line 2395
    .local v0, retStr:Ljava/lang/String;
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 2457
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2460
    :goto_0
    return-object v0

    .line 2397
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2398
    goto :goto_0

    .line 2400
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2402
    goto :goto_0

    .line 2404
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2405
    goto :goto_0

    .line 2407
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0330

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2408
    goto :goto_0

    .line 2410
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0331

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2411
    goto :goto_0

    .line 2413
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0332

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2414
    goto :goto_0

    .line 2416
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0333

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2417
    goto :goto_0

    .line 2419
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0334

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2420
    goto :goto_0

    .line 2422
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2423
    goto/16 :goto_0

    .line 2425
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2426
    goto/16 :goto_0

    .line 2428
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2429
    goto/16 :goto_0

    .line 2431
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0338

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2433
    goto/16 :goto_0

    .line 2435
    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0339

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2437
    goto/16 :goto_0

    .line 2439
    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b033a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2441
    goto/16 :goto_0

    .line 2443
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b033b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2445
    goto/16 :goto_0

    .line 2447
    :pswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b033c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2449
    goto/16 :goto_0

    .line 2451
    :pswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b033d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2453
    goto/16 :goto_0

    .line 2395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private handleCallKey()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2077
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    .line 2078
    .local v3, hasRingingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 2079
    .local v1, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 2081
    .local v2, hasHoldingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2082
    .local v5, phoneType:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 2086
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 2088
    .local v0, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    if-eqz v3, :cond_2

    .line 2090
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2091
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 2173
    .end local v0           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    :goto_0
    return v8

    .line 2093
    .restart local v0       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_4

    if-eqz v1, :cond_4

    .line 2096
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2098
    :cond_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 2099
    :cond_4
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_1

    .line 2102
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2103
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 2105
    .end local v0           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_6
    if-eq v5, v8, :cond_7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_10

    .line 2107
    :cond_7
    if-eqz v3, :cond_9

    .line 2118
    const-string v6, "InCallScreen"

    const-string v7, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2126
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v6}, Lcom/android/phone/VTInCallScreenProxy;->internalAnswerVTCallPre()V

    .line 2129
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 2130
    :cond_9
    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    .line 2132
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "handleCallKey: both lines in use "

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2133
    :cond_a
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2134
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "handleCallKey: ==> swap calls."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2135
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 2137
    :cond_c
    if-eqz v2, :cond_e

    .line 2140
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2142
    :cond_d
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 2154
    :cond_e
    const/4 v4, 0x0

    .line 2156
    .local v4, ignoreThisCallKey:Z
    if-ne v5, v8, :cond_f

    .line 2157
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 2158
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 2159
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2160
    const/4 v4, 0x1

    .line 2162
    :cond_f
    if-nez v4, :cond_1

    .line 2164
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2168
    .end local v4           #ignoreThisCallKey:Z
    :cond_10
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1987
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1998
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    .line 3546
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3548
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 3549
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x6b

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3551
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3552
    .local v1, msg2:Landroid/os/Message;
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3554
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0045

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0046

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0035

    new-instance v4, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0047

    new-instance v4, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3580
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3581
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3582
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3583
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 5
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 3117
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3119
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 3120
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 3126
    .local v2, state:Lcom/android/internal/telephony/Connection$PostDialState;
    sget-object v3, Lcom/android/phone/InCallScreen$30;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3175
    .end local v2           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_0
    :goto_0
    return-void

    .line 3128
    .restart local v2       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->stopLocalToneIfNeeded()V

    .line 3129
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v3, :cond_1

    .line 3134
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3136
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 3137
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v3, p2}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->startLocalToneIfNeeded(C)V

    goto :goto_0

    .line 3148
    :pswitch_1
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3149
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->stopLocalToneIfNeeded()V

    .line 3150
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 3151
    .local v1, postDialStr:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3155
    .end local v1           #postDialStr:Ljava/lang/String;
    :pswitch_2
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3156
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->stopLocalToneIfNeeded()V

    .line 3157
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 3161
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->stopLocalToneIfNeeded()V

    goto :goto_0

    .line 3166
    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->stopLocalToneIfNeeded()V

    .line 3167
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 3168
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto :goto_0

    .line 3126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleRecordProc()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 6599
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v1

    .line 6600
    .local v1, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    sget-object v4, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 6601
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the record custom value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneRecorderHandler;->getCustomValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6602
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneRecorderHandler;->getCustomValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 6605
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6606
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopRecord()V

    .line 6612
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updatePrevPhonenums()V

    .line 6638
    :goto_1
    return-void

    .line 6608
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneRecorderHandler;->getCustomValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 6610
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreenProxy;->stopRecord()V

    goto :goto_0

    .line 6615
    :cond_3
    const/4 v2, 0x0

    .line 6616
    .local v2, recordFlag:Z
    invoke-virtual {v1}, Lcom/android/phone/PhoneRecorder;->ismFlagRecord()Z

    move-result v2

    .line 6617
    const/4 v0, 0x0

    .line 6618
    .local v0, isDifferent:Z
    if-eqz v2, :cond_4

    .line 6619
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->comparePhoneNumbers()Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v3

    .line 6620
    :goto_2
    if-eqz v0, :cond_4

    .line 6621
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneRecorderHandler;->getCustomValue()I

    move-result v4

    if-nez v4, :cond_6

    .line 6623
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6624
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopRecord()V

    .line 6632
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updatePrevPhonenums()V

    .line 6636
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v3

    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneRecorderHandler;->getCustomValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/InCallScreen;->requestUpdateRecordState(II)V

    goto :goto_1

    .line 6619
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 6626
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneRecorderHandler;->getCustomValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 6628
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreenProxy;->stopRecord()V

    goto :goto_3
.end method

.method private hideDialpadInternal(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 4336
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->closeDialer(Z)V

    .line 4339
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 4340
    return-void
.end method

.method private initInCallScreen()V
    .locals 2

    .prologue
    .line 1938
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1943
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    .line 1946
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BaiduCallCard;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    .line 1948
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v0, p0}, Lcom/android/phone/BaiduCallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1955
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallTouchUi()V

    .line 1958
    new-instance v0, Lcom/android/phone/InCallControlState;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    .line 1959
    new-instance v0, Lcom/android/phone/InCallMenuState;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallMenuState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenuState:Lcom/android/phone/InCallMenuState;

    .line 1962
    new-instance v0, Lcom/android/phone/ManageConferenceUtils;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    .line 1964
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 1967
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    .line 1968
    new-instance v0, Lcom/android/phone/VTInCallScreenProxy;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/VTInCallScreenProxy;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerProxy;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    .line 1969
    return-void
.end method

.method private initInCallTouchUi()V
    .locals 1

    .prologue
    .line 5868
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initInCallTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5873
    :cond_0
    const v0, 0x7f0700c6

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BaiduInCallTouchUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    .line 5874
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/BaiduInCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 5878
    new-instance v0, Lcom/android/phone/RespondViaSmsManager;

    invoke-direct {v0}, Lcom/android/phone/RespondViaSmsManager;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    .line 5879
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/RespondViaSmsManager;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 5880
    return-void
.end method

.method private initVTAutoAnswer()V
    .locals 6

    .prologue
    .line 7140
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v2, v2, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->auto_answer:Z

    if-eqz v2, :cond_0

    .line 7143
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/VTSettingUtils;->mVTEngineerModeValues:Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;

    iget-object v3, v3, Lcom/android/phone/VTSettingUtils$VTEngineerModeValues;->auto_answer_time:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7148
    .local v0, autoAnswer:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xca

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7151
    .end local v0           #autoAnswer:I
    :cond_0
    return-void

    .line 7145
    :catch_0
    move-exception v1

    .line 7146
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0       #autoAnswer:I
    goto :goto_0
.end method

.method private internalAnswerAndEnd()V
    .locals 2

    .prologue
    .line 5300
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5304
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 5305
    return-void
.end method

.method private internalAnswerCall()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 5206
    const-string v6, "internalAnswerCall()..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5209
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 5211
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_2

    .line 5212
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 5213
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 5214
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 5215
    .local v4, phoneType:I
    if-ne v4, v7, :cond_4

    .line 5216
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5217
    :cond_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 5226
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "internalAnswerCall: answer CDMA incoming and end SIP ongoing"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5228
    :cond_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 5292
    :goto_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 5294
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_1
    return-void

    .line 5230
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5232
    :cond_4
    if-ne v4, v9, :cond_9

    .line 5233
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "internalAnswerCall: answering (SIP)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5234
    :cond_5
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v7, :cond_7

    .line 5244
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "internalAnswerCall: answer SIP incoming and end CDMA ongoing"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5246
    :cond_6
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5247
    :cond_7
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5250
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5252
    :cond_8
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5254
    :cond_9
    if-ne v4, v8, :cond_f

    .line 5259
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5260
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5263
    .local v1, hasHoldingCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5264
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "internalAnswerCall: is VT ringing now, so call PhoneUtils.answerCall(ringing) anyway !"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5265
    :cond_a
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 5270
    :cond_b
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 5271
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_c

    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5275
    :cond_c
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 5277
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->setOnAnswerAndEndFlag(Z)V

    goto/16 :goto_0

    .line 5283
    :cond_d
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5284
    :cond_e
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 5288
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_f
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private internalHangup()V
    .locals 3

    .prologue
    .line 5377
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 5378
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalHangup()...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5379
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5380
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 5386
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 5401
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    .line 5403
    const-string v1, "InCallScreen"

    const-string v2, "internalHangup(): phone is already IDLE!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v1}, Lcom/android/phone/BaiduCallCard;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v1}, Lcom/android/phone/BaiduCallCard;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 5427
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 5428
    const-string v1, "InCallScreen"

    const-string v2, "internalHangup(): phone is already IDLE, end ourself!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    :cond_2
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 1753
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1757
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1777
    :cond_2
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1788
    const-string v2, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1793
    const-string v2, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1798
    .local v1, showDialpad:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v2, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 1833
    .end local v1           #showDialpad:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInVoiceAnswerVideoCall()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1834
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setInVoiceAnswerVideoCall(Z)V

    .line 1836
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_7

    .line 1837
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "call manager state is ringing"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1839
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2, v4}, Lcom/android/phone/VTInCallScreenProxy;->setVTVisible(Z)V

    .line 1840
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 1869
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_0

    .line 1841
    :cond_7
    const-string v2, "com.android.phone.extra.video"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1842
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "vt extra is true"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1844
    :cond_8
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->initVTInCallScreen()V

    .line 1846
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v3}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v3

    if-ne v2, v3, :cond_9

    .line 1847
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->initDialingSuccessVTState()V

    .line 1849
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->initDialingVTState()V

    .line 1850
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->initCommonVTState()V

    .line 1851
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTCallUtils;->isVTCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1854
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_1

    .line 1856
    :cond_a
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_1

    .line 1860
    :cond_b
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1861
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "receive ACTION_MAIN, but active foreground call is video call"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1862
    :cond_c
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->initVTInCallScreen()V

    .line 1863
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->initCommonVTState()V

    .line 1864
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto/16 :goto_1

    .line 1865
    :cond_d
    const-string v2, "com.android.phone.extra.notification"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1866
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto/16 :goto_1

    .line 1873
    :cond_e
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1875
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1876
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->internalAnswerVTCallPre()V

    .line 1879
    :cond_f
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1881
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    goto/16 :goto_0

    .line 1884
    :cond_10
    const-string v2, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1890
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1891
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ACTION_DISPLAY_ACTIVATION_SCREEN intent on non-OTASP-capable device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1896
    :cond_11
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1897
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v2, :cond_0

    .line 1899
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1900
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v3, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto/16 :goto_0

    .line 1907
    :cond_12
    const-string v2, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1911
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected ACTION_PERFORM_CDMA_PROVISIONING received by InCallScreen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1914
    :cond_13
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1919
    :cond_14
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected CALL action received by InCallScreen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1921
    :cond_15
    const-string v2, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1924
    const-string v2, "InCallScreen"

    const-string v3, "internalResolveIntent: got launched with ACTION_UNDEFINED"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1927
    :cond_16
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private internalRespondViaSms()V
    .locals 3

    .prologue
    .line 5353
    const-string v1, "internalRespondViaSms()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5356
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-nez v1, :cond_0

    .line 5357
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "got internalRespondViaSms(), but mRespondViaSmsManager was never initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5363
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 5365
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v1, v0}, Lcom/android/phone/RespondViaSmsManager;->showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V

    .line 5370
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSilenceRinger()V

    .line 5371
    return-void
.end method

.method private internalSilenceRinger()V
    .locals 2

    .prologue
    .line 5322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    .line 5323
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "internalSilenceRinger()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5324
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 5325
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5327
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 5329
    :cond_1
    return-void
.end method

.method private internalSwapCalls()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5437
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "internalSwapCalls()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5438
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    .line 5442
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 5449
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->clearDigits()V

    .line 5454
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5466
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5467
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    .line 5468
    .local v0, btPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;
    if-eqz v0, :cond_1

    .line 5470
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSwapSecondCallState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5477
    .end local v0           #btPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;
    :cond_1
    :goto_0
    return-void

    .line 5471
    .restart local v0       #btPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;
    :catch_0
    move-exception v1

    .line 5472
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 6835
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6836
    return-void
.end method

.method private muteIncomingCall(Z)V
    .locals 2
    .parameter "mute"

    .prologue
    .line 4186
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 4187
    .local v0, ringer:Lcom/android/phone/Ringer;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4188
    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 4190
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/phone/Ringer;->setMute(Z)V

    .line 4191
    return-void
.end method

.method private okToDialDTMFTones()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5822
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    .line 5823
    .local v3, hasRingingCall:Z
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 5824
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 5835
    .local v0, bgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v7, v7, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v7, v8, :cond_2

    move v4, v5

    .line 5836
    .local v4, noConference:Z
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_3

    :cond_0
    if-nez v3, :cond_3

    if-eqz v4, :cond_3

    move v1, v5

    .line 5847
    .local v1, canDial:Z
    :goto_1
    if-eqz v1, :cond_4

    :cond_1
    :goto_2
    return v5

    .end local v1           #canDial:Z
    .end local v4           #noConference:Z
    :cond_2
    move v4, v6

    .line 5835
    goto :goto_0

    .restart local v4       #noConference:Z
    :cond_3
    move v1, v6

    .line 5836
    goto :goto_1

    .line 5847
    .restart local v1       #canDial:Z
    :cond_4
    iget-boolean v7, p0, Lcom/android/phone/InCallScreen;->mSpeechEnabled:Z

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    if-eqz v3, :cond_1

    :cond_5
    move v5, v6

    goto :goto_2
.end method

.method private okToRecord()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 7298
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 7299
    .local v2, mCall:Lcom/android/internal/telephony/Call;
    if-nez v2, :cond_0

    move v0, v4

    .line 7315
    :goto_0
    return v0

    .line 7302
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 7303
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_1

    const/4 v0, 0x1

    .line 7304
    .local v0, canRecord:Z
    :goto_1
    if-nez v0, :cond_2

    move v0, v4

    .line 7305
    goto :goto_0

    .end local v0           #canRecord:Z
    :cond_1
    move v0, v4

    .line 7303
    goto :goto_1

    .line 7308
    .restart local v0       #canRecord:Z
    :cond_2
    invoke-static {v2}, Lcom/android/phone/BaiduPhoneUtil;->getCalleeAddress(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v3

    .line 7309
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 7310
    goto :goto_0

    .line 7313
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/phone/BaiduPhoneUtil;->shouldRecord(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 7315
    goto :goto_0
.end method

.method private okToRecordVoice()Z
    .locals 5

    .prologue
    .line 6981
    const/4 v1, 0x0

    .line 6985
    .local v1, retval:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 6987
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 6988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fgCall state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6990
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6991
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 6992
    const/4 v1, 0x1

    .line 6996
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_0
    return v1
.end method

.method private onAddCallClick()V
    .locals 3

    .prologue
    .line 4176
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4177
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    .line 4178
    .local v0, isSecure:Z
    if-nez v0, :cond_0

    .line 4179
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 4182
    .end local v0           #isSecure:Z
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    .line 4183
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;I)V
    .locals 23
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 2695
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_0

    const-string v19, "onDisconnect: start..."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2697
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BaiduInCallTouchUi;->onDisconnect()V

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/QuickBackToInCallScreen;->updateQuickBackToInCallScreenView()V

    .line 2700
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    .line 2703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    .line 2706
    .local v18, state:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static/range {p0 .. p0}, Lcom/android/phone/BaiduPhoneUtil;->doRedial(Lcom/android/phone/InCallScreen;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 3029
    :cond_1
    :goto_0
    return-void

    .line 2708
    :cond_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 2709
    .local v5, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v9

    .line 2710
    .local v9, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_3

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onDisconnect: connection \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\', cause = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2712
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateActivityHiberarchy(Z)V

    .line 2715
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const v20, 0x8001

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 2721
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v19

    if-nez v19, :cond_6

    const/4 v12, 0x1

    .line 2722
    .local v12, currentlyIdle:Z
    :goto_1
    const/4 v3, 0x0

    .line 2723
    .local v3, autoretrySetting:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    .line 2724
    .local v16, phoneIsCdma:Z
    :goto_2
    if-eqz v16, :cond_5

    .line 2727
    if-eqz v12, :cond_5

    .line 2728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "call_auto_retry"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2734
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 2737
    sget-object v19, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2738
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 2721
    .end local v3           #autoretrySetting:I
    .end local v12           #currentlyIdle:Z
    .end local v16           #phoneIsCdma:Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 2723
    .restart local v3       #autoretrySetting:I
    .restart local v12       #currentlyIdle:Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 2740
    .restart local v16       #phoneIsCdma:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 2743
    :cond_9
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_1

    const-string v19, "onDisconnect: OTA Call end already handled"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2750
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->clearDigits()V

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getInVoiceAnswerVideoCall()Z

    move-result v19

    if-nez v19, :cond_1

    .line 2760
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_b

    .line 2761
    const v19, 0x7f0b0023

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2763
    :cond_b
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_c

    .line 2764
    const v19, 0x7f0b0022

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2766
    :cond_c
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_d

    .line 2767
    const v19, 0x7f0b0024

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2769
    :cond_d
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_e

    .line 2770
    const v19, 0x7f0b0025

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2772
    :cond_e
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_f

    .line 2773
    const v19, 0x7f0b0026

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2775
    :cond_f
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 2776
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_10

    const-string v19, "InCallScreen"

    const-string v20, "Check VT call dropback and IOT call disconnect UI"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :cond_10
    const/4 v15, 0x0

    .line 2778
    .local v15, isReturnImmediately:Z
    const/16 v19, 0x66

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_19

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/phone/VTInCallScreenProxy;->onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z

    move-result v15

    .line 2783
    :cond_11
    :goto_3
    if-nez v15, :cond_1

    .line 2788
    .end local v15           #isReturnImmediately:Z
    :cond_12
    if-eqz v16, :cond_13

    .line 2789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 2790
    .local v8, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v19, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_1a

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_1a

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_1a

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_1a

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_1a

    .line 2795
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2829
    .end local v8           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_13
    :goto_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2830
    .local v6, call:Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_15

    .line 2839
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    .line 2840
    .local v11, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v11, :cond_15

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_15

    .line 2841
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Connection;

    .line 2842
    .local v10, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2874
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    .end local v11           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_15
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_16

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_1e

    :cond_16
    if-eqz v12, :cond_1e

    const/4 v4, 0x1

    .line 2881
    .local v4, bailOutImmediately:Z
    :goto_5
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_20

    sget-boolean v19, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_20

    .line 2886
    :cond_17
    sget-boolean v19, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    if-eqz v19, :cond_18

    .line 2887
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    .line 2890
    :cond_18
    const/16 v19, 0x66

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 2891
    const/16 v19, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 2896
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto/16 :goto_0

    .line 2780
    .end local v4           #bailOutImmediately:Z
    .end local v6           #call:Lcom/android/internal/telephony/Call;
    .restart local v15       #isReturnImmediately:Z
    :cond_19
    const/16 v19, 0x90

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_11

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/phone/VTInCallScreenProxy;->onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z

    move-result v15

    goto/16 :goto_3

    .line 2796
    .end local v15           #isReturnImmediately:Z
    .restart local v8       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_1a
    sget-object v19, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-eq v8, v0, :cond_1b

    sget-object v19, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_13

    :cond_1b
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_13

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_13

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_13

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_13

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 2804
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2807
    :cond_1c
    if-nez v3, :cond_1d

    .line 2809
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2814
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2874
    .end local v8           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v6       #call:Lcom/android/internal/telephony/Call;
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2893
    .restart local v4       #bailOutImmediately:Z
    :cond_1f
    const/16 v19, 0x93

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    goto/16 :goto_6

    .line 2916
    :cond_20
    if-eqz v4, :cond_23

    .line 2917
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_21

    const-string v19, "- onDisconnect: bailOutImmediately..."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2924
    :cond_21
    const/16 v19, 0x66

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_22

    .line 2925
    const/16 v19, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 3023
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v19

    if-nez v19, :cond_1

    .line 3024
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v17

    .line 3025
    .local v17, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneRecorder;->ismFlagRecord()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3026
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->stopRecord()V

    goto/16 :goto_0

    .line 2927
    .end local v17           #phoneRecorder:Lcom/android/phone/PhoneRecorder;
    :cond_22
    const/16 v19, 0x93

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    goto :goto_7

    .line 2930
    :cond_23
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_24

    const-string v19, "- onDisconnect: delayed bailout..."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2937
    :cond_24
    if-eqz v12, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v19

    if-nez v19, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v19

    if-eqz v19, :cond_27

    .line 2939
    :cond_25
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_26

    const-string v19, "- onDisconnect: switching to \'Call ended\' state..."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2940
    :cond_26
    sget-object v19, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2946
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v13

    .line 2951
    .local v13, hasActiveCall:Z
    if-nez v13, :cond_2c

    .line 2952
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_28

    const-string v19, "- onDisconnect: cleaning up after FG call disconnect..."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2956
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_29

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->dismiss()V

    .line 2959
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2961
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2a

    .line 2963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->dismiss()V

    .line 2964
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2966
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2c

    .line 2967
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_2b

    const-string v19, "- DISMISSING mPausePromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2968
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->dismiss()V

    .line 2969
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2982
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2e

    .line 2983
    if-nez v12, :cond_2e

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2991
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_2d

    const-string v19, "onDisconnect: Call Collision case - staying on InCallScreen."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2992
    :cond_2d
    sget-boolean v19, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_0

    .line 3001
    :cond_2e
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_2f

    const/4 v7, 0x0

    .line 3005
    .local v7, callEndedDisplayDelay:I
    :goto_8
    const/16 v19, 0x66

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_30

    .line 3006
    const-string v19, "onDisconnect() PHONE_DISCONNECT : SIM 1"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x6c

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x6c

    int-to-long v0, v7

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 3001
    .end local v7           #callEndedDisplayDelay:I
    :cond_2f
    const/16 v7, 0x7d0

    goto :goto_8

    .line 3011
    .restart local v7       #callEndedDisplayDelay:I
    :cond_30
    const-string v19, "onDisconnect() PHONE_DISCONNECT : SIM 2"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x93

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 3014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x93

    int-to-long v0, v7

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7
.end method

.method private onHoldClick()V
    .locals 6

    .prologue
    .line 4049
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4050
    .local v0, hasActiveCall:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 4051
    .local v1, hasHoldingCall:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHoldClick: hasActiveCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasHoldingCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4055
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 4057
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 4059
    const/4 v3, 0x1

    .line 4060
    .local v3, newHoldState:Z
    const/4 v2, 0x1

    .line 4077
    .local v2, holdButtonEnabled:Z
    :goto_0
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 4078
    return-void

    .line 4061
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 4063
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 4065
    const/4 v3, 0x0

    .line 4066
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x1

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_0

    .line 4069
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_1
    const/4 v3, 0x0

    .line 4070
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x0

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_0
.end method

.method private onIncomingRing()V
    .locals 1

    .prologue
    .line 6725
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onIncomingRing()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6729
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    if-eqz v0, :cond_1

    .line 6730
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/BaiduInCallTouchUi;->onIncomingRing()V

    .line 6732
    :cond_1
    return-void
.end method

.method private onMMICancel(I)V
    .locals 2
    .parameter "simId"

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z

    .line 3092
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3094
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    .line 3095
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3100
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 3101
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3103
    const-string v0, "Got MMI_COMPLETE, Phone isn\'t in idle, dismiss the start progress dialog..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3105
    :cond_1
    return-void

    .line 3097
    :cond_2
    const-string v0, "Got MMI_COMPLETE, Phone isn\'t in idle, don\'t finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onNewRingingConnection()V
    .locals 1

    .prologue
    .line 6738
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onNewRingingConnection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6756
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v0, :cond_1

    .line 6757
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 6759
    :cond_1
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 2632
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 2633
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2635
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2636
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v1}, Lcom/android/phone/BaiduPhoneUtil;->startAutoRecord([Ljava/lang/Object;)V

    .line 2639
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_2

    .line 2641
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->muteIncomingCall(Z)V

    .line 2644
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->enableHomeKeyDispatched(Z)V

    .line 2652
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v1, :cond_4

    .line 2653
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2676
    :cond_3
    :goto_0
    return-void

    .line 2656
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateLocalCache()V

    .line 2658
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fgCall state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2659
    :cond_5
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bgCall state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2660
    :cond_6
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringingCall state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2667
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 2673
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2675
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onPhoneStateChanged() end"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVTVoiceAnswer()V
    .locals 3

    .prologue
    .line 7098
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    .line 7099
    const-string v1, "onVTVoiceAnswer() ! "

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7100
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setInVoiceAnswerVideoCall(Z)V

    .line 7103
    :try_start_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    .line 7104
    const-string v1, "onVTVoiceAnswer() : call CallManager.voiceAccept() start "

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7105
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->voiceAccept(Lcom/android/internal/telephony/Call;)V

    .line 7106
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    .line 7107
    const-string v1, "onVTVoiceAnswer() : call CallManager.voiceAccept() end "

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7111
    :cond_2
    :goto_0
    return-void

    .line 7108
    :catch_0
    move-exception v0

    .line 7109
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForPhoneStates()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1589
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v1, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1592
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1593
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8d

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1595
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1596
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x90

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1597
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x91

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1599
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1600
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x92

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1602
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1603
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8e

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1605
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8c

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1606
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x94

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1607
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7b

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1608
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x95

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1609
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7c

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1610
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1612
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1613
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v3, -0x4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1627
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1628
    .local v0, phoneType:I
    if-ne v0, v5, :cond_1

    .line 1630
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1631
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1633
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1634
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x37

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1651
    :goto_0
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1653
    .end local v0           #phoneType:I
    :cond_0
    return-void

    .line 1644
    .restart local v0       #phoneType:I
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1645
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Registering for Call Waiting."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1646
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1648
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V
    .locals 8
    .parameter "newMode"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5491
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInCallScreenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5492
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v3, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 5494
    sget-object v3, Lcom/android/phone/InCallScreen$30;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 5624
    :goto_0
    return-void

    .line 5496
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5497
    const-string v3, "InCallScreen"

    const-string v4, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_0

    .line 5502
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v2

    .line 5505
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v6, :cond_3

    .line 5506
    :cond_2
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_0

    .line 5519
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 5521
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v2}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 5526
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v6}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 5535
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 5537
    .local v0, callDuration:J
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    .line 5539
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v3, v7}, Lcom/android/phone/BaiduCallCard;->setVisibility(I)V

    goto :goto_0

    .line 5545
    .end local v0           #callDuration:J
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v5}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 5546
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 5548
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v3, v5}, Lcom/android/phone/BaiduCallCard;->setVisibility(I)V

    .line 5549
    const-string v3, "setInCallScreenMode(CALL_ENDED): Set mCallCard VISIBLE"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5558
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_5

    .line 5563
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInCallScreenMode: (NORMAL) Set mCallCard VISIBLE + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v4}, Lcom/android/phone/BaiduCallCard;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5565
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v5}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 5566
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_0

    .line 5561
    :cond_5
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v3, v3, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v3, :cond_4

    .line 5562
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v3, v5}, Lcom/android/phone/BaiduCallCard;->setVisibility(I)V

    goto :goto_1

    .line 5570
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 5572
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v3, v7}, Lcom/android/phone/BaiduCallCard;->setVisibility(I)V

    goto/16 :goto_0

    .line 5576
    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 5578
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v3, v7}, Lcom/android/phone/BaiduCallCard;->setVisibility(I)V

    goto/16 :goto_0

    .line 5606
    :pswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 5610
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_8

    .line 5611
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_6

    .line 5612
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v6}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 5618
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    if-eqz v3, :cond_7

    .line 5619
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v3, v5}, Lcom/android/phone/BaiduCallCard;->setVisibility(I)V

    .line 5621
    :cond_7
    const-string v3, "setInCallScreenMode: (UNDEFINED): Set mCallCard VISIBLE"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5615
    :cond_8
    const-string v3, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 6848
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 6849
    .local v9, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 6852
    .local v5, inCallControlState:Lcom/android/phone/InCallControlState;
    const v11, 0x7f07016c

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 6853
    .local v0, addMenu:Landroid/view/MenuItem;
    const v11, 0x7f07016d

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 6854
    .local v6, mergeMenu:Landroid/view/MenuItem;
    const v11, 0x7f070172

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 6855
    .local v8, recordMenu:Landroid/view/MenuItem;
    const v11, 0x7f07016b

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 6857
    .local v10, voiceAnswerMenu:Landroid/view/MenuItem;
    const v11, 0x7f070174

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 6858
    .local v3, hangupAllMenu:Landroid/view/MenuItem;
    const v11, 0x7f070175

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 6859
    .local v4, hangupHoldingMenu:Landroid/view/MenuItem;
    const v11, 0x7f070176

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 6860
    .local v2, hangupActiveAndAnswerWaitingMenu:Landroid/view/MenuItem;
    const v11, 0x7f070177

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 6862
    .local v1, ectMenu:Landroid/view/MenuItem;
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 6865
    .local v7, phoneType:I
    if-eqz v0, :cond_0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6866
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6867
    :cond_1
    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6868
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6870
    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6871
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6872
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6873
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6875
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6926
    :goto_0
    return-void

    .line 6878
    :cond_2
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallMenuState:Lcom/android/phone/InCallMenuState;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuState;->update()V

    .line 6882
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_8

    .line 6883
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallMenuState:Lcom/android/phone/InCallMenuState;

    iget-boolean v11, v11, Lcom/android/phone/InCallMenuState;->hasPermanentMenuKey:Z

    if-nez v11, :cond_3

    .line 6884
    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v11, :cond_4

    .line 6885
    if-eqz v0, :cond_3

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6916
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallMenuState:Lcom/android/phone/InCallMenuState;

    iget-boolean v11, v11, Lcom/android/phone/InCallMenuState;->canHangupAll:Z

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6917
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallMenuState:Lcom/android/phone/InCallMenuState;

    iget-boolean v11, v11, Lcom/android/phone/InCallMenuState;->canHangupHolding:Z

    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6924
    :goto_2
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallMenuState:Lcom/android/phone/InCallMenuState;

    iget-boolean v11, v11, Lcom/android/phone/InCallMenuState;->canHangupActiveAndAnswerWaiting:Z

    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6925
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallMenuState:Lcom/android/phone/InCallMenuState;

    iget-boolean v11, v11, Lcom/android/phone/InCallMenuState;->canECT:Z

    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 6886
    :cond_4
    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v11, :cond_7

    .line 6887
    if-eq v7, v13, :cond_5

    const/4 v11, 0x3

    if-ne v7, v11, :cond_6

    .line 6889
    :cond_5
    if-eqz v6, :cond_3

    invoke-interface {v6, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 6891
    :cond_6
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6901
    :cond_7
    if-eqz v0, :cond_3

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 6920
    :cond_8
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallMenuState:Lcom/android/phone/InCallMenuState;

    iget-boolean v11, v11, Lcom/android/phone/InCallMenuState;->canVTVoiceAnswer:Z

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 4800
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4803
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 4804
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4819
    :cond_1
    :goto_0
    return-void

    .line 4809
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 4810
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4814
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4818
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showCanDismissDialog(IZ)V
    .locals 3
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 4890
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCanDismissDialog...isStartupError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4891
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4892
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-direct {p0, v0, p2}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(Ljava/lang/CharSequence;Z)V

    .line 4893
    return-void
.end method

.method private showCanDismissDialog(Ljava/lang/CharSequence;Z)V
    .locals 4
    .parameter "message"
    .parameter "isStartupError"

    .prologue
    .line 4897
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCanDismissDialog...message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4902
    :cond_0
    if-eqz p2, :cond_1

    .line 4903
    new-instance v1, Lcom/android/phone/InCallScreen$22;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$22;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4908
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$23;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$23;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4932
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x103030f

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0035

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    .line 4933
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 4934
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4935
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCanDismissDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 4936
    return-void

    .line 4914
    .end local v0           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    new-instance v1, Lcom/android/phone/InCallScreen$24;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$24;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4922
    .restart local v1       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$25;-><init>(Lcom/android/phone/InCallScreen;)V

    .restart local v0       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_0
.end method

.method private showDialpadInternal(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 4328
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->openDialer(Z)V

    .line 4331
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 4332
    return-void
.end method

.method private showExitingECMDialog()V
    .locals 5

    .prologue
    .line 4854
    const-string v3, "InCallScreen"

    const-string v4, "showExitingECMDialog()..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 4857
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4858
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 4859
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4866
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 4867
    .local v2, inCallUiState:Lcom/android/phone/InCallUiState;
    new-instance v1, Lcom/android/phone/InCallScreen$20;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/InCallScreen$20;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 4871
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$21;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/InCallScreen$21;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 4877
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b01f3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4882
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 4884
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4885
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 4886
    return-void
.end method

.method private showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "postDialStrAfterPause"

    .prologue
    .line 3224
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3225
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3226
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0b0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3227
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3229
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 3230
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3231
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3232
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3235
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3238
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3240
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3241
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3242
    return-void
.end method

.method private showProgressIndication(II)V
    .locals 2
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 5170
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressIndication(message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5175
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    .line 5176
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 5177
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5178
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5179
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5180
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5181
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 5182
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5183
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 5184
    return-void
.end method

.method private showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 12
    .parameter "status"

    .prologue
    const v11, 0x7f0b01ae

    const v10, 0x7f0b0020

    const v7, 0x7f0b001f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4526
    sget-object v5, Lcom/android/phone/InCallScreen$30;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 4711
    invoke-direct {p0, v11, v8}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(IZ)V

    .line 4712
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showStatusIndication: unexpected status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4531
    :pswitch_0
    const-string v5, "InCallScreen"

    const-string v6, "showStatusIndication: nothing to display"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    :cond_0
    :goto_0
    return-void

    .line 4544
    :pswitch_1
    const-string v5, "InCallScreen"

    const-string v6, "handleStartupError: POWER_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v5, :cond_3

    .line 4546
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5, v9}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5, v8}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4548
    invoke-direct {p0, v7, v8}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(IZ)V

    goto :goto_0

    .line 4550
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5, v9}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4551
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4552
    .local v4, text:Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v8}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 4554
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5, v8}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4555
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4556
    .restart local v4       #text:Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v8}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 4560
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_3
    const v5, 0x7f0b01aa

    invoke-direct {p0, v5, v8}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(IZ)V

    goto :goto_0

    .line 4578
    :pswitch_2
    const v5, 0x7f0b01ab

    invoke-virtual {p0, v5, v8}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4587
    :pswitch_3
    const/4 v0, 0x1

    .line 4588
    .local v0, bIsInsertSim:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v5, :cond_4

    .line 4589
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5, v9}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5, v8}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4591
    const/4 v0, 0x0

    .line 4594
    :cond_4
    if-nez v0, :cond_5

    .line 4595
    invoke-direct {p0, v7, v8}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(IZ)V

    goto/16 :goto_0

    .line 4596
    :cond_5
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4597
    const v5, 0x7f0b01ac

    invoke-direct {p0, v5, v8}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(IZ)V

    goto/16 :goto_0

    .line 4616
    .end local v0           #bIsInsertSim:Z
    :pswitch_4
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4617
    const v5, 0x7f0b01ad

    invoke-virtual {p0, v5, v8}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 4630
    :pswitch_5
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    .line 4633
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 4638
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v5, :cond_6

    .line 4639
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v6, 0x7f0b01af

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 4641
    :cond_6
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    goto/16 :goto_0

    .line 4651
    .end local v3           #state:Lcom/android/internal/telephony/PhoneConstants$State;
    :pswitch_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4652
    invoke-direct {p0, v11, v8}, Lcom/android/phone/InCallScreen;->showCanDismissDialog(IZ)V

    goto/16 :goto_0

    .line 4654
    :cond_7
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    goto/16 :goto_0

    .line 4660
    :pswitch_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4661
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto/16 :goto_0

    .line 4663
    :cond_8
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    goto/16 :goto_0

    .line 4673
    :pswitch_8
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    goto/16 :goto_0

    .line 4679
    :pswitch_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showExitingECMDialog()V

    goto/16 :goto_0

    .line 4688
    :pswitch_a
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    goto/16 :goto_0

    .line 4696
    :pswitch_b
    const-string v5, "showGenericErrorDialog, fdn_only"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4697
    const v5, 0x7f0b0022

    invoke-virtual {p0, v5, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 4704
    :pswitch_c
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v5}, Lcom/android/phone/InCallUiState;->getSlot()I

    move-result v2

    .line 4705
    .local v2, slot:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v5}, Lcom/android/phone/InCallUiState;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 4706
    .local v1, number:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP_VOICECALL number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4707
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    const v6, 0x7f0b036e

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/phone/VTInCallScreenProxy;->showReCallDialog(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 4526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 3182
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWaitPromptDialogChoice: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3184
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3185
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3186
    .local v0, buf:Ljava/lang/StringBuilder;
    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3187
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 3191
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3192
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "mWaitPromptDialog already show"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3217
    :cond_1
    :goto_0
    return-void

    .line 3197
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0042

    new-instance v4, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0043

    new-instance v4, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3213
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3216
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 3279
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 3281
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3283
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3287
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0041

    new-instance v3, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3312
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3313
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3315
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3316
    return-void
.end method

.method private startRecord(Z)V
    .locals 5
    .parameter "storeToSdcard"

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRecorderServiceIntent:Landroid/content/Intent;

    const-string v1, "isStoreToSdcard"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3830
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRecorderServiceIntent:Landroid/content/Intent;

    const-string v1, "callerName"

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v2}, Lcom/android/phone/BaiduCallCard;->getMainCallerName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3831
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRecorderServiceIntent:Landroid/content/Intent;

    const-string v1, "callerPhoneNumber"

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v2}, Lcom/android/phone/BaiduCallCard;->getMainCallerPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3832
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecorderServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3833
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRecordDiskCheck:Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;->setExternalStorage(Z)V

    .line 3834
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecordDiskCheck:Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3835
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3836
    return-void
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    .line 3843
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecorderServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->stopService(Landroid/content/Intent;)Z

    .line 3844
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3845
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3495
    const/4 v3, 0x0

    .line 3496
    .local v3, updateSuccessful:Z
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "syncWithPhoneState()..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3497
    :cond_0
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 3504
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_3

    .line 3509
    :cond_2
    sget-object v4, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    .line 3542
    :goto_0
    return-object v4

    .line 3518
    :cond_3
    const/4 v0, 0x0

    .line 3519
    .local v0, hasPendingMmiCodes:Z
    const/4 v1, 0x0

    .line 3522
    .local v1, hasPendingMmiCodes2:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v5

    .line 3523
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v5

    .line 3532
    :goto_2
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v2

    .line 3534
    .local v2, showProgressIndication:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-eqz v2, :cond_7

    .line 3537
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3538
    sget-object v4, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto :goto_0

    .end local v2           #showProgressIndication:Z
    :cond_5
    move v0, v6

    .line 3522
    goto :goto_1

    :cond_6
    move v1, v6

    .line 3523
    goto :goto_2

    .line 3541
    .restart local v2       #showProgressIndication:Z
    :cond_7
    const-string v4, "InCallScreen"

    const-string v5, "syncWithPhoneState: phone is idle (shouldn\'t be here)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    sget-object v4, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1657
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1658
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1659
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V

    .line 1661
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1662
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1663
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V

    .line 1665
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPostDialCharacterGemini(Landroid/os/Handler;I)V

    .line 1666
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPostDialCharacterGemini(Landroid/os/Handler;I)V

    .line 1668
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V

    .line 1669
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V

    .line 1671
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V

    .line 1672
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V

    .line 1687
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1688
    .local v0, phoneType:I
    if-ne v0, v4, :cond_1

    .line 1690
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V

    .line 1691
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V

    .line 1693
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V

    .line 1694
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V

    .line 1704
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 1705
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1706
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1707
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1709
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1710
    return-void

    .line 1699
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1700
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Registering for Call Waiting."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1701
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private updateDialpadVisibility()V
    .locals 2

    .prologue
    .line 5699
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 5700
    const-string v0, "updateDialpadVisibility(): state == PhoneConstants.State.RINGING"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5701
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 5711
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->clearDigits()V

    .line 5721
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5734
    :cond_1
    :goto_0
    return-void

    .line 5728
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private updateInCallTouchUi()V
    .locals 2

    .prologue
    .line 5886
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    if-eqz v0, :cond_0

    .line 5887
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/BaiduInCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 5889
    :cond_0
    return-void
.end method

.method private updateLocalCache()V
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 2624
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 2625
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 2626
    return-void
.end method

.method private updateManageConferencePanelIfNecessary()V
    .locals 6

    .prologue
    .line 5644
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 5645
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_2

    .line 5648
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 5649
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v2

    .line 5650
    .local v2, status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v2, v3, :cond_1

    .line 5651
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- syncWithPhoneState failed! status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5654
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 1"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5655
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 5684
    .end local v2           #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    :cond_1
    :goto_0
    return-void

    .line 5661
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 5662
    .local v1, numConnections:I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_4

    .line 5665
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 5666
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v2

    .line 5667
    .restart local v2       #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v2, v3, :cond_1

    .line 5668
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- syncWithPhoneState failed! status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 2"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5672
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 5680
    .end local v2           #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->getNumCallersInConference()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 5682
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updatePrevPhonenums()V
    .locals 4

    .prologue
    .line 6583
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "-updatePrevPhonenums:update the previous phone number list."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6587
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 6589
    .local v0, fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    sget-object v2, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6590
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6591
    sget-object v2, Lcom/android/phone/InCallScreen;->prevPhonenums:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6593
    :cond_1
    return-void
.end method

.method private updateProgressIndication()V
    .locals 4

    .prologue
    const v3, 0x7f0b01b9

    .line 5132
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5133
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    .line 5164
    :goto_0
    return-void

    .line 5139
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 5140
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v1, Lcom/android/phone/InCallScreen$30;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5159
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressIndication: unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    goto :goto_0

    .line 5143
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    goto :goto_0

    .line 5147
    :pswitch_1
    const v1, 0x7f0b01ba

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallScreen;->showProgressIndication(II)V

    goto :goto_0

    .line 5153
    :pswitch_2
    const v1, 0x7f0b01bb

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallScreen;->showProgressIndication(II)V

    goto :goto_0

    .line 5140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProviderOverlay()V
    .locals 12

    .prologue
    const/16 v11, 0x79

    const/4 v10, 0x0

    .line 4491
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 4495
    .local v1, inCallUiState:Lcom/android/phone/InCallUiState;
    const v7, 0x7f0700c9

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 4497
    .local v4, overlay:Landroid/view/ViewGroup;
    iget-boolean v7, v1, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    if-eqz v7, :cond_0

    .line 4498
    const v7, 0x7f0b01fe

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4499
    .local v5, template:Ljava/lang/CharSequence;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/CharSequence;

    iget-object v8, v1, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    aput-object v8, v7, v10

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 4503
    .local v6, text:Ljava/lang/CharSequence;
    const v7, 0x7f0700cb

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4504
    .local v2, message:Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4506
    const v7, 0x7f0700ca

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4507
    .local v0, image:Landroid/widget/ImageView;
    iget-object v7, v1, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4509
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4513
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 4514
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v7, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 4515
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4519
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v2           #message:Landroid/widget/TextView;
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #template:Ljava/lang/CharSequence;
    .end local v6           #text:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 4517
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRecordView(Z)V
    .locals 13
    .parameter "recordStart"

    .prologue
    .line 7226
    const v9, 0x7f07007b

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 7227
    .local v8, timer:Landroid/widget/TextView;
    if-eqz p1, :cond_1

    .line 7228
    iget-wide v9, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    .line 7229
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mTimerHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mUpdateTimer:Ljava/lang/Runnable;

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7231
    iget-wide v9, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    const-wide/16 v11, 0xe10

    div-long v1, v9, v11

    .line 7232
    .local v1, hour:J
    iget-wide v9, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    const-wide/16 v11, 0x3c

    div-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    mul-long/2addr v11, v1

    sub-long v3, v9, v11

    .line 7233
    .local v3, min:J
    iget-wide v9, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    const-wide/16 v11, 0xe10

    mul-long/2addr v11, v1

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    mul-long/2addr v11, v3

    sub-long v5, v9, v11

    .line 7234
    .local v5, sec:J
    const-string v9, "  %02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 7235
    .local v7, timeStr:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0b043e

    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7236
    iget-wide v9, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 7237
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7246
    .end local v1           #hour:J
    .end local v3           #min:J
    .end local v5           #sec:J
    .end local v7           #timeStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 7240
    :cond_1
    const v9, 0x7f0b0340

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7241
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7242
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7243
    const v9, 0x7f070068

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 7244
    .local v0, btn:Landroid/widget/ToggleButton;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 3330
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "updateScreen()..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3331
    :cond_0
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v7, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 3341
    .local v4, inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3342
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v7, :cond_1

    .line 3343
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v7}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 3349
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateCallTime()V

    .line 3351
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isVTIdle()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3352
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3353
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3354
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v8, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v7, v8}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 3355
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v8}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 3356
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v7, v9}, Lcom/android/phone/VTInCallScreenProxy;->setVTVisible(Z)V

    .line 3478
    :cond_2
    :goto_0
    return-void

    .line 3359
    :cond_3
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v8}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 3370
    :cond_4
    :goto_1
    iget-boolean v7, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v7, :cond_6

    .line 3371
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3362
    :cond_5
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v8}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_1

    .line 3375
    :cond_6
    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_9

    .line 3376
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3377
    :cond_7
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v7, :cond_2

    .line 3378
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_8

    const-string v7, "- updateScreen: mApp.otaUtils is not null, call otaShowProperScreen"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3379
    :cond_8
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v7}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_0

    .line 3382
    :cond_9
    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_10

    .line 3383
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_a

    const-string v7, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3385
    :cond_a
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 3386
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v7, v8, :cond_d

    .line 3388
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_b

    const-string v7, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3389
    :cond_b
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v7, :cond_2

    .line 3390
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_c

    const-string v7, "- updateScreen: mApp.otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3392
    :cond_c
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v7}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto/16 :goto_0

    .line 3395
    :cond_d
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_e

    const-string v7, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3396
    :cond_e
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v7, :cond_2

    .line 3397
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_f

    const-string v7, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3398
    :cond_f
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v7}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto/16 :goto_0

    .line 3402
    :cond_10
    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_12

    .line 3403
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_11

    const-string v7, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3404
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateManageConferencePanelIfNecessary()V

    goto/16 :goto_0

    .line 3406
    :cond_12
    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_13

    .line 3407
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_13

    const-string v7, "- updateScreen: call ended state..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3413
    :cond_13
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_14

    const-string v7, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3417
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3421
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7, v8}, Lcom/android/phone/BaiduCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 3423
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 3424
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 3425
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProgressIndication()V

    .line 3428
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 3429
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 3431
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v7}, Lcom/android/phone/VTInCallScreenProxy;->dismissVTDialogs()V

    .line 3438
    sget-object v7, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v8}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v8

    if-ne v7, v8, :cond_2

    .line 3439
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/phone/VTInCallScreenProxy;->setVTVisible(Z)V

    .line 3440
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v8, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v7, v8}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto/16 :goto_0

    .line 3447
    :cond_15
    const/4 v6, 0x0

    .line 3448
    .local v6, postDialStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v1

    .line 3449
    .local v1, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 3450
    .local v5, phoneType:I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_19

    .line 3451
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 3452
    .local v2, fgLatestConnection:Lcom/android/internal/telephony/Connection;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_17

    .line 3454
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_16
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3455
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v7, v8, :cond_16

    .line 3457
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_2

    .line 3460
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_17
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v7, v8, :cond_2

    .line 3462
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_18

    const-string v7, "show the Wait dialog for CDMA"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3463
    :cond_18
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v6

    .line 3464
    invoke-direct {p0, v2, v6}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3466
    .end local v2           #fgLatestConnection:Lcom/android/internal/telephony/Connection;
    :cond_19
    if-eq v5, v9, :cond_1a

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1c

    .line 3468
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1b
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3469
    .restart local v0       #cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v7, v8, :cond_1b

    .line 3470
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v6

    .line 3471
    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_3

    .line 3475
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1c
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private updateVoiceCallRecordState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 3859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceCallRecordState... state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3860
    const/4 v0, 0x0

    .line 3861
    .local v0, ringCall:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 3862
    .local v1, ringCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v2, :cond_0

    .line 3863
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3864
    if-eqz v0, :cond_0

    .line 3865
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3868
    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v1, :cond_2

    .line 3877
    :cond_1
    :goto_0
    return-void

    .line 3872
    :cond_2
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v1, :cond_1

    goto :goto_0
.end method


# virtual methods
.method adjustProcessPriority()V
    .locals 2

    .prologue
    .line 7160
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 7161
    .local v0, myId:I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 7162
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 7164
    :cond_0
    return-void
.end method

.method public answerIncomingCall()V
    .locals 0

    .prologue
    .line 2463
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 2464
    return-void
.end method

.method public answerVTCall()V
    .locals 1

    .prologue
    .line 7119
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7120
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenProxy;->internalAnswerVTCallPre()V

    .line 7123
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 7124
    return-void
.end method

.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 6284
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 6286
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    .line 6294
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 6296
    return-void
.end method

.method delayedCleanupAfterDisconnect(I)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3630
    const/4 v3, 0x0

    .line 3647
    .local v3, slot:I
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3655
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v7}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v4, v6

    .line 3657
    .local v4, stayHere:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 3658
    const-string v5, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3750
    :goto_1
    return-void

    .end local v4           #stayHere:Z
    :cond_1
    move v4, v5

    .line 3655
    goto :goto_0

    .line 3661
    .restart local v4       #stayHere:Z
    :cond_2
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3665
    :cond_3
    iget-boolean v7, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v7, :cond_8

    .line 3666
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "- delayedCleanupAfterDisconnect: finishing InCallScreen..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3667
    :cond_4
    sput v8, Lcom/android/phone/InCallUiState;->mLastInCallScreenStatus:I

    .line 3688
    const/4 v2, 0x0

    .line 3689
    .local v2, isPhoneStateRestricted:Z
    const/16 v7, 0x6c

    if-ne v7, p1, :cond_7

    .line 3690
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted(I)Z

    move-result v2

    .line 3707
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v7, :cond_6

    .line 3714
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->createPhoneEndIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3715
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_6

    .line 3717
    const/high16 v7, 0x1

    :try_start_0
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3718
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3735
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3736
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->finishIfNecessory()V

    .line 3745
    .end local v2           #isPhoneStateRestricted:Z
    :goto_4
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-static {v6}, Lcom/android/phone/BaiduPhoneUtil;->onEndInCallSession([Ljava/lang/Object;)V

    .line 3746
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v5}, Lcom/android/phone/BaiduCallCard;->clearStuff()V

    .line 3748
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_1

    .line 3692
    .restart local v2       #isPhoneStateRestricted:Z
    :cond_7
    const/16 v7, 0x93

    if-ne v7, p1, :cond_5

    .line 3693
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted(I)Z

    move-result v2

    .line 3695
    const/4 v3, 0x1

    goto :goto_2

    .line 3719
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3726
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v7, "InCallScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delayedCleanupAfterDisconnect: transition to call log failed; intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3739
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isPhoneStateRestricted:Z
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3740
    sput v8, Lcom/android/phone/InCallUiState;->mLastInCallScreenStatus:I

    goto :goto_4

    .line 3742
    :cond_9
    sput v5, Lcom/android/phone/InCallUiState;->mLastInCallScreenStatus:I

    goto :goto_4
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 6310
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 6311
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 6313
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6314
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 6502
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6503
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v0, p1}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6504
    const/4 v0, 0x1

    return v0
.end method

.method doSuppCrssSuppServiceNotification(Ljava/lang/String;)V
    .locals 7
    .parameter "number"

    .prologue
    .line 2466
    const/4 v1, 0x0

    .line 2467
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    if-eqz v4, :cond_0

    .line 2468
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2469
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2470
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2478
    .end local v3           #phoneType:I
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 2480
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, " Connnection is null"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2500
    :cond_1
    :goto_1
    return-void

    .line 2471
    .restart local v3       #phoneType:I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 2472
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2474
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2483
    .end local v3           #phoneType:I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2484
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_7

    move-object v0, v2

    .line 2485
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 2487
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SuppCrssSuppService ci.phoneNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2488
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2489
    iput-object p1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2497
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_6
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2498
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_1

    .line 2491
    :cond_7
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_6

    move-object v4, v2

    .line 2492
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2493
    .restart local v0       #ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2494
    iput-object p1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method enableHomeKeyDispatched(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 7028
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableHomeKeyDispatched, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7029
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 7030
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7031
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 7032
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7035
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7036
    return-void

    .line 7034
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public endInCallScreenSession()V
    .locals 2

    .prologue
    .line 1531
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession()... phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1532
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 1533
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1517
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1519
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissDialogs()V

    .line 1520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1521
    return-void
.end method

.method finishForTest()V
    .locals 0

    .prologue
    .line 7053
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 7054
    return-void
.end method

.method public getHoldCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7294
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v0}, Lcom/android/phone/BaiduCallCard;->getHoldCallerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->cutTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .locals 1

    .prologue
    .line 5895
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    return-object v0
.end method

.method public getInVoiceAnswerVideoCall()Z
    .locals 1

    .prologue
    .line 7094
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mInVoiceAnswerVideoCall:Z

    return v0
.end method

.method public getMainCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7291
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v0}, Lcom/android/phone/BaiduCallCard;->getMainCallerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->cutTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnAnswerAndEndFlag()Z
    .locals 1

    .prologue
    .line 5111
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mOnAnswerandEndCall:Z

    return v0
.end method

.method getSwappingCalls()Z
    .locals 1

    .prologue
    .line 6641
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    return v0
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 1

    .prologue
    .line 6466
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v0}, Lcom/android/phone/InCallControlState;->update()V

    .line 6467
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method public getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;
    .locals 1

    .prologue
    .line 7114
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    return-object v0
.end method

.method handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "menuItem"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6931
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 6973
    :goto_0
    :pswitch_0
    return v1

    .line 6936
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onAddCallClick()V

    move v1, v2

    .line 6937
    goto :goto_0

    .line 6939
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    .line 6940
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    move v1, v2

    .line 6941
    goto :goto_0

    .line 6943
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onVoiceRecordClick()V

    move v1, v2

    .line 6944
    goto :goto_0

    .line 6946
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onVTVoiceAnswer()V

    move v1, v2

    .line 6947
    goto :goto_0

    .line 6949
    :pswitch_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hangupAllCalls()V

    move v1, v2

    .line 6950
    goto :goto_0

    .line 6952
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move v1, v2

    .line 6953
    goto :goto_0

    .line 6955
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move v1, v2

    .line 6956
    goto :goto_0

    .line 6960
    :pswitch_8
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    .line 6961
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->explicitCallTransferGemini(I)V

    :goto_1
    move v1, v2

    .line 6971
    goto :goto_0

    .line 6963
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->explicitCallTransferGemini(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6968
    :catch_0
    move-exception v0

    .line 6969
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_1

    .line 6931
    :pswitch_data_0
    .packed-switch 0x7f07016b
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 4346
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4349
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4351
    sparse-switch p1, :sswitch_data_0

    .line 4446
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4469
    const v0, 0x7f070076

    if-ne p1, v0, :cond_6

    .line 4470
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: id == R.id.swapButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    :goto_1
    return-void

    .line 4355
    :sswitch_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4356
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenProxy;->internalAnswerVTCallPre()V

    .line 4359
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 4364
    :sswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4365
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 4369
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 4371
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    goto :goto_0

    .line 4367
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_2

    .line 4375
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalRespondViaSms()V

    goto :goto_0

    .line 4380
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    .line 4381
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_onHoldClick(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 4385
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    .line 4386
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v0}, Lcom/android/phone/BaiduCallCard;->swapCalls()V

    goto :goto_0

    .line 4390
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_0

    .line 4394
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 4398
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 4407
    :sswitch_8
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    if-eqz v0, :cond_4

    .line 4408
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ignore addButton click event"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4411
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onAddCallClick()V

    goto/16 :goto_0

    .line 4416
    :sswitch_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    .line 4417
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 4422
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_5

    .line 4423
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 4425
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 4426
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4427
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 4433
    :sswitch_b
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4434
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto/16 :goto_0

    .line 4437
    :sswitch_c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto/16 :goto_1

    .line 4440
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndHolding(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 4443
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onVoiceRecordClick()V

    goto/16 :goto_0

    .line 4474
    :cond_6
    const v0, 0x7f070079

    if-ne p1, v0, :cond_7

    .line 4475
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: id == R.id.mergeButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4479
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    goto/16 :goto_1

    .line 4351
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070008 -> :sswitch_0
        0x7f070009 -> :sswitch_1
        0x7f07000a -> :sswitch_2
        0x7f070064 -> :sswitch_d
        0x7f070065 -> :sswitch_c
        0x7f070068 -> :sswitch_e
        0x7f07006b -> :sswitch_b
        0x7f07006e -> :sswitch_9
        0x7f070071 -> :sswitch_5
        0x7f070072 -> :sswitch_6
        0x7f070074 -> :sswitch_7
        0x7f070075 -> :sswitch_3
        0x7f070076 -> :sswitch_4
        0x7f070078 -> :sswitch_8
        0x7f070079 -> :sswitch_9
        0x7f0700cd -> :sswitch_a
        0x7f0700ce -> :sswitch_a
    .end sparse-switch
.end method

.method public handleOtaCallEnd()V
    .locals 2

    .prologue
    .line 6360
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleOtaCallEnd entering"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6361
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_3

    .line 6367
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6368
    :cond_2
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6369
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 6371
    :cond_3
    return-void
.end method

.method handlePendingStatus()V
    .locals 3

    .prologue
    .line 7039
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->getPendingUssdMessage()Landroid/os/Message;

    move-result-object v0

    .line 7040
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 7041
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;I)V

    .line 7043
    :cond_0
    return-void
.end method

.method hangupRingingCall()V
    .locals 1

    .prologue
    .line 5311
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5315
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 5316
    return-void
.end method

.method ignoreUpdateScreen()Z
    .locals 3

    .prologue
    .line 7133
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 7134
    .local v1, hasActiveFgCall:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    .line 7135
    .local v0, hasActiveBgCall:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->hasPendingCallerInfoQuery()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method internalHangupAll()V
    .locals 3

    .prologue
    .line 5335
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "internalHangupAll()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5338
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->hangupAllGemini(I)V

    .line 5339
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->hangupAllGemini(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5346
    :cond_1
    :goto_0
    return-void

    .line 5343
    :catch_0
    move-exception v0

    .line 5344
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Error, cannot hangup All Calls"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method internalHangupAllCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "cm"

    .prologue
    .line 6687
    const-string v6, "internalHangupAllCalls"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6688
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    .line 6690
    .local v5, phones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 6691
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 6692
    .local v2, fg:Lcom/android/internal/telephony/Call;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6693
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_6

    .line 6694
    instance-of v6, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v6, :cond_4

    .line 6695
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6696
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6697
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->hangupAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6716
    .end local v0           #bg:Lcom/android/internal/telephony/Call;
    .end local v2           #fg:Lcom/android/internal/telephony/Call;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v1

    .line 6717
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "InCallScreen"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6719
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 6698
    .restart local v0       #bg:Lcom/android/internal/telephony/Call;
    .restart local v2       #fg:Lcom/android/internal/telephony/Call;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6699
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_0

    .line 6700
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6701
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_0

    .line 6704
    :cond_4
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6705
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6706
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 6708
    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6709
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_0

    .line 6713
    :cond_6
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Phone is idle  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public isBluetoothAudioConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6140
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isBluetoothAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6141
    const/4 v2, 0x1

    .line 6156
    :cond_0
    :goto_0
    return v2

    .line 6144
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 6148
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 6150
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6153
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6154
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 6156
    .local v2, isAudioOn:Z
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6170
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6194
    :cond_0
    :goto_0
    return v2

    .line 6178
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_2

    .line 6179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    .line 6181
    .local v0, timeSinceRequest:J
    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 6188
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v2, v3

    .line 6189
    goto :goto_0

    .end local v0           #timeSinceRequest:J
    :cond_2
    move v2, v3

    .line 6194
    goto :goto_0
.end method

.method public isBluetoothAvailable()Z
    .locals 2

    .prologue
    .line 6091
    const/4 v0, 0x0

    .line 6112
    .local v0, isConnected:Z
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->isBluetoothAvailable()Z

    move-result v0

    .line 6116
    return v0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 5740
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 1555
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .locals 1

    .prologue
    .line 1559
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isManageConferenceMode()Z
    .locals 2

    .prologue
    .line 5630
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtaCallInActiveState()Z
    .locals 2

    .prologue
    .line 6344
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_1

    .line 6348
    :cond_0
    const/4 v0, 0x1

    .line 6350
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 6374
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneStateRestricted()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5964
    const/4 v0, 0x0

    .line 5965
    .local v0, is_ecc_only:Z
    const/4 v1, 0x0

    .line 5967
    .local v1, is_out_of_service:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 5969
    :cond_0
    const/4 v0, 0x1

    .line 5972
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 5974
    :cond_2
    const/4 v1, 0x1

    .line 5977
    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v2, v4

    :goto_0
    return v2

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public isPhoneStateRestricted(I)Z
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 5989
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 5990
    .local v0, serviceStateGemini:I
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhoneStateRestricted - sim : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5991
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 5861
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method okToShowFTAMenu()Z
    .locals 5

    .prologue
    .line 4141
    const-string v3, "okToAcceptWaitingAndHangupActive"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4142
    const/4 v1, 0x0

    .line 4144
    .local v1, retval:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 4145
    .local v0, phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/4 v2, -0x1

    .line 4146
    .local v2, slot:I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_2

    .line 4147
    const/4 v2, 0x1

    .line 4151
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4152
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 4153
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->isTestIccCardGemini(I)Z

    move-result v1

    .line 4156
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4157
    return v1

    .line 4148
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 4149
    const/4 v2, 0x0

    goto :goto_0
.end method

.method okToShowInCallTouchUi()Z
    .locals 2

    .prologue
    .line 5947
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 2031
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2043
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2066
    :cond_1
    :goto_0
    return-void

    .line 2052
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2053
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    goto :goto_0

    .line 2057
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_4

    .line 2059
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2060
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_0

    .line 2065
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 3891
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3894
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 4026
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_1

    .line 4029
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    .line 4041
    :goto_0
    const v2, 0x1129f

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4045
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4046
    return-void

    .line 3950
    .restart local p1
    :pswitch_0
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 3951
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_0

    .line 4035
    :cond_1
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4041
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 3894
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700d4
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6518
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged: newConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6528
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6538
    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 6539
    .local v0, isKeyboardOpen:Z
    :goto_0
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - isKeyboardOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6540
    :cond_1
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    move v1, v2

    .line 6541
    .local v1, isLandscape:Z
    :goto_1
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - isLandscape = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6542
    :cond_2
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - uiMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6544
    :cond_3
    return-void

    .end local v0           #isKeyboardOpen:Z
    .end local v1           #isLandscape:Z
    :cond_4
    move v0, v3

    .line 6538
    goto :goto_0

    .restart local v0       #isKeyboardOpen:Z
    :cond_5
    move v1, v3

    .line 6540
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 835
    const-string v9, "InCallScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate()...  this = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 838
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 840
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    .line 841
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 844
    sget-boolean v9, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v9, :cond_1

    .line 850
    const-string v9, "InCallScreen"

    const-string v10, "onCreate() reached on non-voice-capable device"

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    const/high16 v3, 0x28

    .line 858
    .local v3, flags:I
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v10, :cond_2

    .line 866
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v9

    if-nez v9, :cond_2

    .line 867
    const/high16 v9, 0x40

    or-int/2addr v3, v9

    .line 873
    :cond_2
    const v9, 0x7f0d0029

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->setTheme(I)V

    .line 874
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 875
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/Window;->addFlags(I)V

    .line 882
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 883
    .local v8, windowManager:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 884
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 885
    .local v5, screenWidth:I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 886
    .local v4, screenHeight:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "====w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 888
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 890
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 892
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/phone/PhoneRecorderServices;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mRecorderServiceIntent:Landroid/content/Intent;

    .line 894
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 895
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- onCreate: phone state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 910
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 911
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v9, :cond_3

    .line 921
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x1

    invoke-virtual {v9, p0, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 933
    :cond_3
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 934
    const v9, 0x7f04002a

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 939
    :goto_1
    const v9, 0x7f07007a

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 940
    .local v6, stub:Landroid/view/ViewStub;
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 942
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 944
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 954
    if-nez p1, :cond_5

    .line 955
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 956
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 959
    :cond_5
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/phone/VTInCallScreenFlags;->mVTIsInflate:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    if-eqz v9, :cond_7

    .line 961
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "onCreate(): VTInCallScreen already inflated before destroy, inflate again"

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 962
    :cond_6
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v9}, Lcom/android/phone/VTInCallScreenProxy;->initVTInCallScreen()V

    .line 965
    :cond_7
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 966
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 968
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v9, Lcom/android/phone/InCallScreen;->ACTION_LOCKED:Ljava/lang/String;

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 969
    .local v2, dmLockFilter:Landroid/content/IntentFilter;
    sget-object v9, Lcom/android/phone/InCallScreen;->ACTION_UNLOCK:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v2}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 973
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x7d

    const-wide/16 v11, 0x7d0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 974
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 976
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/phone/PhoneRecorderHandler;->setListener(Lcom/android/phone/PhoneRecorderHandler$Listener;)V

    .line 977
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/phone/BaiduPhoneUtils;->allowInCallRecord(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 978
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getRecordTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    .line 979
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/phone/PhoneApp;->setRecordTime(J)V

    .line 980
    iget-wide v9, p0, Lcom/android/phone/InCallScreen;->mTimePassed:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 981
    const v9, 0x7f07007b

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 982
    .local v7, timer:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 983
    :cond_8
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mRecordStart:Z

    .line 984
    iget-boolean v9, p0, Lcom/android/phone/InCallScreen;->mRecordStart:Z

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->updateRecordView(Z)V

    .line 985
    const v9, 0x7f070068

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 986
    .local v0, btn:Landroid/widget/ToggleButton;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 989
    .end local v0           #btn:Landroid/widget/ToggleButton;
    .end local v7           #timer:Landroid/widget/TextView;
    :cond_9
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "onCreate(): exit"

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 936
    .end local v2           #dmLockFilter:Landroid/content/IntentFilter;
    .end local v6           #stub:Landroid/view/ViewStub;
    :cond_a
    const v9, 0x7f04002b

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 6650
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6651
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 6652
    .local v0, inflate:Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 6654
    .end local v0           #inflate:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1439
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1444
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1446
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1447
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1449
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1453
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1455
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->clearInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1459
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v0, v3}, Lcom/android/phone/BaiduCallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    if-eqz v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    invoke-virtual {v0, v3}, Lcom/android/phone/BaiduInCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v0, :cond_2

    .line 1467
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0, v3}, Lcom/android/phone/RespondViaSmsManager;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->clearInCallScreenReference()V

    .line 1471
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    .line 1472
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    .line 1473
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    .line 1474
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallTime;->setListener(Lcom/android/phone/CallTime$OnTickListener;)V

    .line 1479
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1481
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1484
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1486
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenProxy;->dismissVTDialogs()V

    .line 1487
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenProxy;->onDestroy()V

    .line 1491
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_4

    .line 1492
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->clearUiWidgets()V

    .line 1495
    :cond_4
    return-void
.end method

.method onDialerClose()V
    .locals 2

    .prologue
    .line 5779
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialerClose()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5783
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    if-eqz v0, :cond_1

    .line 5784
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 5788
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_3

    .line 5793
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_3

    .line 5794
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 5799
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 5803
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 5806
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5808
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad([Ljava/lang/Object;)V

    .line 5813
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 5816
    return-void
.end method

.method onDialerOpen()V
    .locals 2

    .prologue
    .line 5748
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5751
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 5754
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 5757
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5762
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2

    .line 5765
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 5768
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    if-eqz v0, :cond_3

    .line 5769
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 5772
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2215
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown(keycode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2217
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2318
    :cond_1
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2322
    :cond_2
    :goto_0
    :sswitch_1
    return v1

    .line 2219
    :sswitch_2
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "ignore KEYCODE_HOME"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2222
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2223
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, " onKeyDown() KEYCODE_CALL RepeatCount is 0 ..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2224
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v0

    .line 2226
    .local v0, handled:Z
    if-nez v0, :cond_2

    .line 2227
    const-string v2, "InCallScreen"

    const-string v3, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2230
    .end local v0           #handled:Z
    :cond_4
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, " onKeyDown() KEYCODE_CALL long press "

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2250
    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    .line 2261
    const-string v2, "InCallScreen"

    const-string v3, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSilenceRinger()V

    goto :goto_0

    .line 2273
    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2274
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "mDialer.isOpened(): DTMFTwelveKeyDialer is opened"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2275
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    goto :goto_0

    .line 2280
    :cond_6
    sget-object v2, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    if-eqz v2, :cond_1

    .line 2282
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTDisplayScreenMode(Z)V

    goto :goto_0

    .line 2287
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 2322
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 2217
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1b -> :sswitch_1
        0x46 -> :sswitch_0
        0x4c -> :sswitch_0
        0x5b -> :sswitch_6
        0xa4 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2007
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2008
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2009
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2010
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2012
    :cond_1
    const-string v0, "onKeyLongPress(), hangupRingingCall"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2014
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2015
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 2019
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 2021
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    .line 2027
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2017
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2204
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v1, p2}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2210
    :cond_0
    :goto_0
    return v0

    .line 2206
    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 2210
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onMMIInitiate(Landroid/os/AsyncResult;I)V
    .locals 6
    .parameter "r"
    .parameter "simId"

    .prologue
    .line 3042
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_0

    .line 3044
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-static {v3, v4, p2, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3069
    :goto_0
    return-void

    .line 3053
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 3055
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 3058
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    const/4 v0, 0x0

    .line 3059
    .local v0, message:Landroid/os/Message;
    if-nez p2, :cond_1

    .line 3060
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3067
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 3061
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 3062
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x38

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 3064
    :cond_2
    const-string v2, "onMMIInitiate()... no such simId"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 6977
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method onMuteClick()V
    .locals 3

    .prologue
    .line 4114
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 4115
    .local v0, newMuteState:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMuteClick(): newMuteState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4116
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4118
    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 4119
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 4121
    :cond_0
    return-void

    .line 4114
    .end local v0           #newMuteState:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1749
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 1750
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 6678
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    if-eq v0, v1, :cond_0

    .line 6679
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 6681
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreenProxy;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/16 v4, 0x6c

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1271
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onPause()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1272
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1274
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1275
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 1277
    :cond_1
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1278
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- remove DELAY_TO_FINISH_INCALLSCREEN:"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1279
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1283
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v5, v1, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 1284
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 1288
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1292
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1296
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1300
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->stopDialerSession()V

    .line 1325
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_3

    .line 1327
    const-string v1, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1331
    :cond_3
    const v1, 0x1129e

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1335
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1338
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreenProxy;->dismissVTDialogs()V

    .line 1340
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInVoiceAnswerVideoCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1341
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setInVoiceAnswerVideoCall(Z)V

    .line 1343
    const/16 v1, 0x93

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 1345
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 1350
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v1, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 1352
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1357
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v1, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1360
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/QuickBackToInCallScreen;->updateQuickBackToInCallScreenView()V

    .line 1372
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1376
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1380
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1387
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v0

    .line 1388
    .local v0, hasPendingCallStatusCode:Z
    if-eqz v0, :cond_6

    .line 1389
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onPause: clear pending call status code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1390
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 1395
    :cond_6
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 6659
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    if-eqz v2, :cond_0

    .line 6673
    :goto_0
    return v1

    .line 6663
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6664
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6665
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6667
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    if-eq v1, v2, :cond_3

    .line 6668
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->setupMenuItems(Landroid/view/Menu;)V

    .line 6673
    .end local v0           #i:I
    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 6670
    .restart local v0       #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1, p1}, Lcom/android/phone/VTInCallScreenProxy;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x7d0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1023
    const-string v5, "+InCallScreen.onResume"

    invoke-static {v5}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 1024
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "onResume()..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1025
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1026
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissDialogs()V

    .line 1028
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1029
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 1031
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 1034
    .local v2, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-boolean v5, Lcom/android/phone/InCallScreen;->mLocaleChanged:Z

    if-eqz v5, :cond_1

    .line 1035
    sput-boolean v7, Lcom/android/phone/InCallScreen;->mLocaleChanged:Z

    .line 1036
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v5}, Lcom/android/phone/BaiduCallCard;->updateForLanguageChange()V

    .line 1037
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v5}, Lcom/android/phone/VTInCallScreenProxy;->NotifyLocaleChange()V

    .line 1038
    sput-boolean v8, Lcom/android/phone/ManageConferenceUtils;->mLocalChanged:Z

    .line 1042
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v6}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 1043
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v5}, Lcom/android/phone/VTInCallScreenProxy;->dismissVTDialogs()V

    .line 1049
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hasPendingMmi()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1050
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7e

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1056
    :cond_2
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v5, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v5, v7}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 1060
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1063
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/QuickBackToInCallScreen;->updateQuickBackToInCallScreenView()V

    .line 1071
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v5}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->startDialerSession()V

    .line 1076
    iget-boolean v5, v2, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-eqz v5, :cond_c

    .line 1077
    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->showDialpadInternal(Z)V

    .line 1091
    :goto_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v5, :cond_3

    .line 1092
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v5}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 1109
    :cond_3
    const/4 v1, 0x0

    .line 1110
    .local v1, handledStartupError:Z
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    .line 1111
    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1112
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "- onResume: need to show status indication!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1113
    :cond_4
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    .line 1114
    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 1119
    const/4 v1, 0x1

    .line 1122
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 1126
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    .line 1128
    .local v0, bluetoothConnected:Z
    if-eqz v0, :cond_d

    .line 1129
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 1134
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 1139
    const/4 v3, 0x0

    .line 1140
    .local v3, inOtaCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1141
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->checkOtaspStateOnResume()Z

    move-result v3

    .line 1143
    :cond_6
    if-nez v3, :cond_7

    .line 1145
    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1152
    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1158
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v4

    .line 1163
    .local v4, status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    sget-object v5, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v4, v5, :cond_10

    .line 1164
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1172
    :cond_8
    if-eqz v1, :cond_e

    .line 1177
    const-string v5, "InCallScreen"

    const-string v6, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v7, v5, Lcom/android/phone/InCallUiState;->delayFinished:Z

    .line 1233
    sput v9, Lcom/android/phone/InCallUiState;->mLastInCallScreenStatus:I

    .line 1236
    const v5, 0x1129d

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1240
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1244
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1246
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1247
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v7}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1250
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    const-class v6, Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1252
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7d

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1253
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initVTAutoAnswer()V

    .line 1255
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1256
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->handlePendingStatus()V

    .line 1257
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_b

    .line 1258
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x82

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1260
    :cond_b
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mtk performance result]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const-string v5, "-InCallScreen.onResume"

    invoke-static {v5}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->adjustProcessPriority()V

    .line 1264
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->doInitStuffOnResume(Lcom/android/phone/InCallScreen;)V

    .line 1265
    :goto_2
    return-void

    .line 1079
    .end local v0           #bluetoothConnected:Z
    .end local v1           #handledStartupError:Z
    .end local v3           #inOtaCall:Z
    .end local v4           #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    :cond_c
    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    goto/16 :goto_0

    .line 1131
    .restart local v0       #bluetoothConnected:Z
    .restart local v1       #handledStartupError:Z
    :cond_d
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_1

    .line 1192
    .restart local v3       #inOtaCall:Z
    .restart local v4       #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    :cond_e
    const-string v5, "InCallScreen"

    const-string v6, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1208
    invoke-static {}, Lcom/android/phone/InCallUiState;->isNormalInCallScreenState()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1209
    const-string v5, "InCallScreen"

    const-string v6, "  ==> syncWithPhoneState failed; not in normal status!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 1211
    sput v9, Lcom/android/phone/InCallUiState;->mLastInCallScreenStatus:I

    .line 1216
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->adjustProcessPriority()V

    goto :goto_2

    .line 1213
    :cond_f
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v8, v5, Lcom/android/phone/InCallUiState;->delayFinished:Z

    .line 1214
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xcb

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 1219
    :cond_10
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1220
    iget-object v5, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v5, v6, :cond_11

    iget-object v5, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v5, v6, :cond_9

    .line 1222
    :cond_11
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/phone/BaiduCallCard;->setVisibility(I)V

    .line 1223
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->adjustProcessPriority()V

    goto :goto_2
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 7154
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "clear mShowStatusIndication remove DELAY_TO_FINISH_INCALLSCREEN"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7155
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mShowStatusIndication:Z

    .line 7157
    return-void
.end method

.method public onShowHideDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4319
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4320
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 4324
    :goto_0
    return-void

    .line 4322
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->showDialpadInternal(Z)V

    goto :goto_0
.end method

.method onSpeakerClick()V
    .locals 0

    .prologue
    .line 4125
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1399
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1400
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPostDrawListener:Lcom/android/phone/InCallScreen$PostDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPostDrawListener(Landroid/view/ViewTreeObserver$OnPostDrawListener;)V

    .line 1401
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1405
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onStop()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1406
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1408
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPostDrawListener:Lcom/android/phone/InCallScreen$PostDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPostDrawListener(Landroid/view/ViewTreeObserver$OnPostDrawListener;)V

    .line 1410
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1411
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1414
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_3

    .line 1419
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_3

    .line 1426
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    .line 1427
    const-string v1, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1428
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1429
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_3

    .line 1430
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1434
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreenProxy;->onStop()V

    .line 1435
    return-void
.end method

.method onSuppCrssSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2503
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;

    .line 2504
    .local v0, notification:Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuppCrssNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2505
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 2523
    :goto_0
    :pswitch_0
    return-void

    .line 2512
    :pswitch_1
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->doSuppCrssSuppServiceNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 2516
    :pswitch_2
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->doSuppCrssSuppServiceNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 2520
    :pswitch_3
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->type:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->doSuppCrssSuppServiceNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 2505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 2553
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone$SuppService;

    .line 2554
    .local v1, service:Lcom/android/internal/telephony/Phone$SuppService;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2557
    :cond_0
    sget-object v2, Lcom/android/phone/InCallScreen$30;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2598
    const v0, 0x7f0b01b1

    .line 2606
    .local v0, errorMessageResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 2607
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2608
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2610
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2613
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0035

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2617
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2619
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2620
    return-void

    .line 2561
    .end local v0           #errorMessageResId:I
    :pswitch_0
    const v0, 0x7f0b01b2

    .line 2562
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 2567
    .end local v0           #errorMessageResId:I
    :pswitch_1
    const v0, 0x7f0b01b3

    .line 2568
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 2574
    .end local v0           #errorMessageResId:I
    :pswitch_2
    const v0, 0x7f0b01b4

    .line 2575
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 2580
    .end local v0           #errorMessageResId:I
    :pswitch_3
    const v0, 0x7f0b01b5

    .line 2581
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 2586
    .end local v0           #errorMessageResId:I
    :pswitch_4
    const v0, 0x7f0b01b6

    .line 2587
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 2591
    .end local v0           #errorMessageResId:I
    :pswitch_5
    const v0, 0x7f0b01b7

    .line 2592
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 2557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    const/4 v5, 0x1

    .line 2328
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2329
    .local v1, notification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuppServiceNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2331
    :cond_0
    const/4 v0, 0x0

    .line 2333
    .local v0, msg:Ljava/lang/String;
    iget v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v3, :cond_2

    .line 2334
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->getSuppServiceMOStringId(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;

    move-result-object v0

    .line 2348
    :cond_1
    :goto_0
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2349
    return-void

    .line 2335
    :cond_2
    iget v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v3, v5, :cond_1

    .line 2337
    const-string v2, ""

    .line 2338
    .local v2, str:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->getSuppServiceMTStringId(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;

    move-result-object v0

    .line 2340
    iget v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    const/16 v4, 0x91

    if-ne v3, v4, :cond_3

    .line 2341
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 2342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2345
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 1
    .parameter "timeElapsed"

    .prologue
    .line 6764
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    if-eqz v0, :cond_1

    .line 6765
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/BaiduCallCard;->updateElapsedTimeWidgetEx(J)V

    .line 6768
    :cond_0
    :goto_0
    return-void

    .line 6766
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    if-eqz v0, :cond_0

    .line 6767
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/VTInCallScreenProxy;->updateElapsedTime(J)V

    goto :goto_0
.end method

.method onVoiceRecordClick()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 7000
    const v8, 0x7f07007b

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 7001
    .local v5, timer:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v3

    .line 7002
    .local v3, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-virtual {v3}, Lcom/android/phone/PhoneRecorder;->ismFlagRecord()Z

    move-result v0

    .line 7003
    .local v0, isRecording:Z
    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 7004
    if-eqz v0, :cond_0

    .line 7005
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7006
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopRecord()V

    .line 7025
    :cond_0
    :goto_0
    return-void

    .line 7010
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isSdCardAvailable()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->sdcardFullFlag()Z

    move-result v8

    if-nez v8, :cond_2

    move v2, v6

    .line 7011
    .local v2, isStoreToSdcard:Z
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isPhoneMemoryAvailable()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->phoneMemeoryFullFlag()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v6

    .line 7012
    .local v1, isStoreToPhoneMemory:Z
    :goto_2
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 7013
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b0352

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 7015
    const v6, 0x7f070068

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    .line 7016
    .local v4, tb:Landroid/widget/ToggleButton;
    if-eqz v4, :cond_0

    .line 7017
    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .end local v1           #isStoreToPhoneMemory:Z
    .end local v2           #isStoreToSdcard:Z
    .end local v4           #tb:Landroid/widget/ToggleButton;
    :cond_2
    move v2, v7

    .line 7010
    goto :goto_1

    .restart local v2       #isStoreToSdcard:Z
    :cond_3
    move v1, v7

    .line 7011
    goto :goto_2

    .line 7020
    .restart local v1       #isStoreToPhoneMemory:Z
    :cond_4
    invoke-virtual {v3}, Lcom/android/phone/PhoneRecorder;->ismFlagRecord()Z

    move-result v8

    if-nez v8, :cond_0

    .line 7021
    if-eqz v2, :cond_5

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->startRecord(Z)V

    .line 7022
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v6, v7

    .line 7021
    goto :goto_3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 2193
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 2197
    :cond_0
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 6322
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6323
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6331
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 6339
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6340
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6341
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 6206
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6207
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6208
    return-void
.end method

.method public requestUpdateRecordState(II)V
    .locals 2
    .parameter "state"
    .parameter "customValue"

    .prologue
    .line 3849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phone record custom value is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3850
    if-nez p2, :cond_1

    .line 3851
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->updateVoiceCallRecordState(I)V

    .line 3856
    :cond_0
    :goto_0
    return-void

    .line 3852
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 3853
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreenProxy;->updateVideoCallRecordState(I)V

    goto :goto_0
.end method

.method requestUpdateScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x7a

    .line 5910
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5911
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5918
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->ignoreUpdateScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5919
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ignoreUpdateScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5926
    :cond_1
    :goto_0
    return-void

    .line 5925
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method requestUpdateScreenDelay(J)V
    .locals 3
    .parameter "ms"

    .prologue
    const/16 v2, 0x7a

    .line 7167
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateScreenDelay()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7168
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7175
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->ignoreUpdateScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7176
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ignoreUpdateScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7183
    :cond_1
    :goto_0
    return-void

    .line 7182
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public resetInCallScreenMode()V
    .locals 1

    .prologue
    .line 6471
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetInCallScreenMode: setting mode to UNDEFINED..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6472
    :cond_0
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 6473
    return-void
.end method

.method public setInVoiceAnswerVideoCall(Z)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7057
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInVoiceAnswerVideoCall() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7058
    :cond_0
    if-eqz p1, :cond_2

    .line 7059
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mInVoiceAnswerVideoCall:Z

    .line 7060
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    .line 7061
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 7062
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7063
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/InCallScreen$26;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$26;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7072
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 7074
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    .line 7075
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/InCallScreen$27;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$27;-><init>(Lcom/android/phone/InCallScreen;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 7091
    :cond_1
    :goto_0
    return-void

    .line 7081
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mInVoiceAnswerVideoCall:Z

    .line 7082
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 7083
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7084
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerDialog:Landroid/app/ProgressDialog;

    .line 7086
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 7087
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 7088
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public setOnAnswerAndEndFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 5115
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mOnAnswerandEndCall:Z

    .line 5116
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1016
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1017
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1018
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1019
    return-void
.end method

.method setSwappingCalls(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 6645
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mSwappingCalls:Z

    .line 6646
    return-void
.end method

.method showGenericErrorDialog(IZ)V
    .locals 6
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 4738
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4739
    .local v3, msg:Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showGenericErrorDialog(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4745
    :cond_0
    if-eqz p2, :cond_1

    .line 4746
    new-instance v1, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4750
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4754
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4783
    .local v2, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v5, 0x3030031

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0035

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4789
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4790
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4793
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 4796
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 4797
    return-void

    .line 4760
    .end local v0           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    :cond_1
    new-instance v1, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4767
    .restart local v1       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4774
    .restart local v0       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Lcom/android/phone/InCallScreen$19;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;)V

    .restart local v2       #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    goto :goto_0
.end method

.method public switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .locals 4
    .parameter "newMode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchInCallAudio: new mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4260
    sget-object v0, Lcom/android/phone/InCallScreen$30;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4300
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchInCallAudio: unexpected mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    if-eq v0, v1, :cond_4

    .line 4308
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4312
    :goto_1
    return-void

    .line 4262
    :pswitch_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4264
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4265
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 4267
    :cond_1
    invoke-static {p0, v2, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 4273
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4281
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4282
    invoke-static {p0, v3, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4284
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 4291
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4292
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 4294
    :cond_3
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4295
    invoke-static {p0, v3, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 4310
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_1

    .line 4260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toggleBluetooth()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4206
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4208
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4209
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 4211
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4214
    invoke-static {p0, v1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4244
    :cond_0
    :goto_0
    return-void

    .line 4224
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4225
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4228
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 4233
    :cond_3
    const-string v0, "InCallScreen"

    const-string v1, "toggleBluetooth(): bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toggleSpeaker()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4092
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 4093
    .local v0, newSpeakerState:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleSpeaker(): newSpeakerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4095
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4096
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 4098
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4105
    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 4106
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 4108
    :cond_1
    return-void

    .line 4092
    .end local v0           #newSpeakerState:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public triggerTimerStartCount(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 7127
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 7128
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 7129
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 7130
    return-void
.end method

.method tryToRestoreSlidingTab()V
    .locals 7

    .prologue
    .line 2528
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "tryToRestoreSlidingTab"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2529
    :cond_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2530
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2531
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2532
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fgCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2533
    :cond_1
    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bgCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2534
    :cond_2
    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringingCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2535
    :cond_3
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInCallTouchUi visibility = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;

    invoke-virtual {v5}, Lcom/android/phone/BaiduInCallTouchUi;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2536
    :cond_4
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_6

    .line 2540
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "send FAKE_INCOMING_CALL_WIDGET message"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2543
    :cond_5
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2544
    .local v2, message:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x258

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2546
    .end local v2           #message:Landroid/os/Message;
    :cond_6
    return-void
.end method

.method updateActivityHiberarchy(Z)V
    .locals 3
    .parameter "bShowWhenLock"

    .prologue
    const/high16 v2, 0x8

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incallscreen: updateActivityHiberarchy() ,bShowWhenLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1579
    :cond_0
    if-eqz p1, :cond_1

    .line 1580
    const-string v0, "updateActivityHiberarchy: set window flag "

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1586
    :goto_0
    return-void

    .line 1583
    :cond_1
    const-string v0, "updateActivityHiberarchy: clear window flag "

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 1713
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1720
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1723
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1728
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1729
    return-void
.end method

.method public updateCallTime()V
    .locals 6

    .prologue
    .line 6771
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "updateCallTime()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6773
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6774
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6775
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6795
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 6796
    .local v1, state:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/phone/InCallScreen$30;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 6829
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallTime: unexpected call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6832
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 6803
    :pswitch_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v2, v2, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 6805
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6806
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreenProxy;->onReceiveVTManagerStartCounter()V

    goto :goto_0

    .line 6812
    :cond_3
    :pswitch_2
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "updateCallTime: start periodicUpdateTimer"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6813
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 6814
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 6815
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_0

    .line 6825
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_0

    .line 6796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method updateIncomingCallWidgetHint(II)V
    .locals 2
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 6486
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    if-eqz v0, :cond_0

    .line 6487
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/BaiduCallCard;->setIncomingCallWidgetHint(II)V

    .line 6488
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/BaiduCallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/BaiduCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 6498
    :cond_0
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 3
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v2, 0x40

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incallscreen: updateKeyguardPolicy() ,dismissKeyguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1564
    if-eqz p1, :cond_0

    .line 1565
    const-string v0, "updateKeyguardPolicy: set dismiss keyguard window flag "

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1571
    :goto_0
    return-void

    .line 1568
    :cond_0
    const-string v0, "updateKeyguardPolicy: clear dismiss keyguard window flag "

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
