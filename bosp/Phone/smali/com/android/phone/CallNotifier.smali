.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;,
        Lcom/android/phone/CallNotifier$CustomInfo;
    }
.end annotation


# static fields
.field private static final BLACK_LIST_URI:Ljava/lang/String; = "content://com.android.Contacts.BlackList/blacklist"

.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

.field private static final CALLWAITING_ADDCALL_DISABLE_TIME:I = 0x7530

.field private static final CALLWAITING_ADDCALL_DISABLE_TIMEOUT:I = 0x18

.field private static final CALLWAITING_CALLERINFO_DISPLAY_DONE:I = 0x17

.field private static final CALLWAITING_CALLERINFO_DISPLAY_TIME:I = 0x4e20

.field public static final CALL_TYPE_NONE:I = 0x0

.field public static final CALL_TYPE_SIP:I = -0x2

.field private static final CDMA_CALL_WAITING_REJECT:I = 0x1b

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DISPLAYINFO_NOTIFICATION_DONE:I = 0x19

.field private static final DISPLAYINFO_NOTIFICATION_TIME:I = 0x7d0

.field private static final DISPLAY_BUSY_MESSAGE:I = 0x32

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_OFF:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x1a

.field private static final IN_BLACK_LIST:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field private static final PHONE_BATTERY_LOW:I = 0x16

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x8

.field private static final PHONE_COLUMN_INDEX:I = 0x1

.field private static final PHONE_DISCONNECT:I = 0x3

.field private static final PHONE_DISCONNECT2:I = 0x23

.field private static final PHONE_DISCONNECT_SIM1:I = 0x1f

.field private static final PHONE_DISCONNECT_SIM2:I = 0x20

.field private static final PHONE_ENHANCED_VP_OFF:I = 0xa

.field private static final PHONE_ENHANCED_VP_ON:I = 0x9

.field private static final PHONE_INCOMING_RING:I = 0x5

.field private static final PHONE_INCOMING_RING2:I = 0x25

.field private static final PHONE_MWI_CHANGED:I = 0x15

.field private static final PHONE_MWI_CHANGED2:I = 0x28

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_NEW_RINGING_CONNECTION2:I = 0x21

.field private static final PHONE_RESEND_MUTE:I = 0xc

.field private static final PHONE_RESEND_MUTE2:I = 0x27

.field private static final PHONE_RINGBACK_TONE:I = 0xb

.field private static final PHONE_RINGBACK_TONE2:I = 0x26

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PHONE_STATE_CHANGED2:I = 0x22

.field private static final PHONE_STATE_DISPLAYINFO:I = 0x6

.field private static final PHONE_STATE_SIGNALINFO:I = 0x7

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED2:I = 0x24

.field private static final PHONE_VT_RING_INFO:I = 0xd

.field private static final PHONE_VT_RING_INFO2:I = 0xe

.field private static final PHONE_WAITING_DISCONNECT:I = 0xf

.field private static final PHONE_WAITING_DISCONNECT1:I = 0x10

.field private static final PHONE_WAITING_DISCONNECT2:I = 0x11

.field private static final PHONE_WAITING_DISCONNECT_STOP_TONE_PLAYER:I = 0x12

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1f4

.field private static final RING_ONCE_INTERVAL:J = 0xbb8L

.field private static final RING_ONCE_TIME:J = 0xbb8L

.field private static final TONE_RELATIVE_VOLUME_SIGNALINFO:I = 0x50

.field private static final UPDATE_IN_CALL_NOTIFICATION:I = 0x1c

.field private static final VDBG:Z

.field public static mIsShouldSendtoVoicemail:Z

.field public static mIsWaitingQueryComplete:Z

.field private static final projection:[Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field cfiStatus:[Z

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBlackListManager:Lcom/android/phone/BlackListManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBroadCastContent:Ljava/lang/String;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field mConnectionMsgHandled:Z

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field private mLastState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPreviousCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mVoicePrivacyState:Z

.field private ok2Ring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    .line 261
    sput-boolean v2, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    .line 262
    sput-boolean v1, Lcom/android/phone/CallNotifier;->mIsWaitingQueryComplete:Z

    .line 902
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v0, v2

    const-string v2, "phone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallNotifier;->projection:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogAsync;)V
    .locals 10
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "callLog"

    .prologue
    const/16 v9, 0xd

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 287
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 149
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 159
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 200
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mConnectionMsgHandled:Z

    .line 228
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mLastState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 237
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 238
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 242
    iput v6, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 246
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 254
    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 257
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    .line 264
    new-array v3, v5, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    .line 266
    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 597
    new-instance v3, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 632
    new-instance v3, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 3125
    new-instance v3, Lcom/android/phone/CallNotifier$3;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$3;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 288
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 289
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 290
    iget-object v3, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 291
    iget-object v3, p1, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 292
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 294
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 296
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 298
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 304
    :try_start_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 314
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 315
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 316
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v3, v4, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 323
    :cond_1
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 327
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v9, v6}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 332
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v9, v7}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 348
    new-instance v3, Lcom/android/phone/BlackListManager;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct {v3, v4}, Lcom/android/phone/BlackListManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mBlackListManager:Lcom/android/phone/BlackListManager;

    .line 352
    return-void

    .line 306
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 264
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method private closeVTManager()V
    .locals 3

    .prologue
    .line 3375
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    .line 3376
    const-string v0, "closeVTManager()!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3380
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 3386
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 3390
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInControlRes:Z

    if-eqz v0, :cond_1

    .line 3391
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3392
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 3394
    :cond_1
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 10
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v5, 0x3c

    .line 3401
    const-wide/16 v0, 0x0

    .line 3402
    .local v0, minutes:J
    const-wide/16 v2, 0x0

    .line 3404
    .local v2, seconds:J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    .line 3405
    div-long v0, p1, v5

    .line 3406
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 3408
    :cond_0
    move-wide v2, p1

    .line 3410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v6, 0x7f0b0192

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v6, 0x7f0b040f

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/PhoneApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getBroadCastContent(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 8
    .parameter "ci"

    .prologue
    const v7, 0x7f0b043a

    const v6, 0x7f0b0439

    .line 1752
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b043c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, broadCastContent:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1754
    .local v3, number:Ljava/lang/String;
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1755
    .local v2, name:Ljava/lang/String;
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 1757
    .local v1, location:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1758
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1760
    const-string v4, "+86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1761
    const/4 v4, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1763
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b043b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1786
    :goto_0
    return-object v0

    .line 1771
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1776
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1782
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getBroadCastContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "pnumber"

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f0b043a

    const v6, 0x7f0b0439

    .line 1713
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b043c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1714
    .local v0, broadCastContent:Ljava/lang/String;
    move-object v3, p1

    .line 1715
    .local v3, number:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1716
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v4, v3, v8, v8}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getPhoneLocation(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, location:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1719
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1721
    const-string v4, "+86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1722
    const/4 v4, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1724
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b043b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1747
    :goto_0
    return-object v0

    .line 1732
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1737
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1743
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCallingSimID(Lcom/android/internal/telephony/Connection;)I
    .locals 6
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    .line 671
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    .line 672
    .local v3, subscription:I
    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 673
    .local v0, baiduSub:I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v2

    .line 675
    .local v2, simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-nez v2, :cond_1

    move v1, v4

    .line 676
    .local v1, simId:I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallingSimID(): log this call, simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", simInfo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 679
    return v1

    .end local v0           #baiduSub:I
    .end local v1           #simId:I
    .end local v2           #simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :cond_0
    move v0, v4

    .line 672
    goto :goto_0

    .line 675
    .restart local v0       #baiduSub:I
    .restart local v2       #simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :cond_1
    iget-wide v4, v2, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    long-to-int v1, v4

    goto :goto_1
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 4
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 3183
    const/4 v0, 0x0

    .line 3185
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3186
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3206
    :goto_0
    if-nez v0, :cond_4

    .line 3207
    const/4 v2, 0x0

    .line 3218
    :goto_1
    return-object v2

    .line 3193
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3195
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3197
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3199
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3202
    :cond_3
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 3209
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 3212
    .local v1, presentation:I
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3214
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3215
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v2, v0

    .line 3218
    goto :goto_1
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 11
    .parameter "phone"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 831
    sget-boolean v9, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v9, :cond_0

    .line 835
    const-string v8, "CallNotifier"

    const-string v9, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :goto_0
    return v7

    .line 842
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 843
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_1
    move v7, v8

    .line 844
    goto :goto_0

    .line 848
    :cond_2
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v5, v7

    .line 850
    .local v5, provisioned:Z
    :goto_1
    if-nez v5, :cond_4

    .line 851
    const-string v8, "CallNotifier"

    const-string v9, "Ignoring incoming call: not provisioned"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5           #provisioned:Z
    :cond_3
    move v5, v8

    .line 848
    goto :goto_1

    .line 856
    .restart local v5       #provisioned:Z
    :cond_4
    invoke-static {p1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 857
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v9, v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v9, v10, :cond_5

    move v0, v7

    .line 859
    .local v0, activateState:Z
    :goto_2
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v9, v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v9, v10, :cond_6

    move v4, v7

    .line 861
    .local v4, dialogState:Z
    :goto_3
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v6, v9, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 863
    .local v6, spcState:Z
    if-eqz v6, :cond_7

    .line 864
    const-string v8, "CallNotifier"

    const-string v9, "Ignoring incoming call: OTA call is active"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #activateState:Z
    .end local v4           #dialogState:Z
    .end local v6           #spcState:Z
    :cond_5
    move v0, v8

    .line 857
    goto :goto_2

    .restart local v0       #activateState:Z
    :cond_6
    move v4, v8

    .line 859
    goto :goto_3

    .line 866
    .restart local v4       #dialogState:Z
    .restart local v6       #spcState:Z
    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_a

    .line 871
    :cond_8
    if-eqz v4, :cond_9

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 872
    :cond_9
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 873
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    move v7, v8

    .line 874
    goto :goto_0

    .line 882
    .end local v0           #activateState:Z
    .end local v4           #dialogState:Z
    .end local v6           #spcState:Z
    :cond_a
    const-string v9, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 883
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 884
    .local v3, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 885
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_c

    .line 886
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 888
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mBlackListManager:Lcom/android/phone/BlackListManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v10

    if-eqz v10, :cond_b

    :goto_4
    invoke-virtual {v9, v1, v7}, Lcom/android/phone/BlackListManager;->shouldBlock(Ljava/lang/String;I)Z

    move-result v7

    goto/16 :goto_0

    :cond_b
    move v7, v8

    goto :goto_4

    .end local v1           #address:Ljava/lang/String;
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #call:Lcom/android/internal/telephony/Call;
    :cond_c
    move v7, v8

    .line 898
    goto/16 :goto_0
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .locals 4
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "callLog"

    .prologue
    .line 275
    const-class v1, Lcom/android/phone/CallNotifier;

    monitor-enter v1

    .line 276
    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/android/phone/CallNotifier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 281
    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v1

    return-object v0

    .line 279
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initFakeCall(Lcom/android/internal/telephony/Connection;I)V
    .locals 2
    .parameter "c"
    .parameter "simId"

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    new-instance v1, Lcom/android/phone/InCallUiState$FakeCall;

    invoke-direct {v1}, Lcom/android/phone/InCallUiState$FakeCall;-><init>()V

    iput-object v1, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 3444
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/InCallUiState$FakeCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 3446
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    iput p2, v0, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    .line 3450
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    .line 3451
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iput v1, v0, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    .line 3452
    return-void
.end method

.method private isCallInBlackList(Lcom/android/internal/telephony/Connection;)Z
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 907
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 908
    .local v7, number:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 929
    :goto_0
    return v0

    .line 911
    :cond_0
    const-string v0, "content://com.android.Contacts.BlackList/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 912
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "PHONE_NUMBERS_EQUAL(number, ?, %d) AND phone=1"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, selection:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object v7, v4, v8

    .line 917
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/CallNotifier;->projection:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 919
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 921
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v9, :cond_1

    .line 925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 929
    goto :goto_0

    .line 925
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isRingOnceCall(Lcom/android/internal/telephony/Connection;I)I
    .locals 7
    .parameter "c"
    .parameter "callLogType"

    .prologue
    .line 3423
    const/4 v2, 0x0

    .line 3424
    .local v2, ringonce:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 3425
    .local v0, ringTime:J
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    const-wide/16 v3, 0xbb8

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 3426
    const/4 v2, 0x1

    .line 3429
    :cond_0
    return v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3265
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    return-void
.end method

.method private onBatteryLow()V
    .locals 1

    .prologue
    .line 2441
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2445
    :cond_0
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "r"

    .prologue
    const/16 v10, 0x18

    const/16 v9, 0x17

    const/4 v8, 0x0

    .line 2857
    invoke-virtual {p0, v9}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2858
    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2862
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v6, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2867
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2868
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2869
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 2873
    :cond_1
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2874
    const-wide/16 v6, 0x4e20

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2878
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 2881
    const-wide/16 v6, 0x7530

    invoke-virtual {p0, v10, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2885
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2886
    .local v0, infoCW:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 2887
    .local v1, isPresent:I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2888
    :cond_2
    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    .line 2889
    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 2890
    .local v5, uSignalType:I
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 2891
    .local v3, uAlertPitch:I
    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 2892
    .local v4, uSignal:I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2895
    :cond_3
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 2899
    .local v2, toneID:I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2901
    .end local v2           #toneID:I
    .end local v3           #uAlertPitch:I
    .end local v4           #uSignal:I
    .end local v5           #uSignalType:I
    :cond_4
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .locals 24

    .prologue
    .line 2922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    .line 2925
    .local v23, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v13, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_3

    .line 2927
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    .line 2929
    .local v14, c:Lcom/android/internal/telephony/Connection;
    if-eqz v14, :cond_2

    .line 2930
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    .line 2931
    .local v21, number:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    .line 2932
    .local v6, presentation:I
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 2933
    .local v8, date:J
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v10

    .line 2934
    .local v10, duration:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v3, :cond_4

    const/4 v7, 0x3

    .line 2938
    .local v7, callLogType:I
    :goto_0
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v22

    .line 2940
    .local v22, o:Ljava/lang/Object;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_5

    :cond_0
    move-object/from16 v4, v22

    .line 2941
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .line 2948
    .end local v22           #o:Ljava/lang/Object;
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0, v6}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2950
    .local v5, logNumber:Ljava/lang/String;
    if-eqz v4, :cond_6

    iget v0, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v20, v0

    .line 2951
    .local v20, newPresentation:I
    :goto_2
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- onCdmaCallWaitingReject(): logNumber set to: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", newPresentation value is: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2955
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->getCallRecorFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2956
    .local v12, recordPath:Ljava/lang/String;
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLjava/lang/String;)V

    .line 2963
    .local v2, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2970
    :goto_3
    const/4 v3, 0x3

    if-ne v7, v3, :cond_7

    .line 2972
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    move-object/from16 v13, p0

    move-wide v15, v8

    invoke-direct/range {v13 .. v18}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;JJ)V

    .line 2979
    :goto_4
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 2983
    .end local v2           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #logNumber:Ljava/lang/String;
    .end local v6           #presentation:I
    .end local v7           #callLogType:I
    .end local v8           #date:J
    .end local v10           #duration:J
    .end local v12           #recordPath:Ljava/lang/String;
    .end local v20           #newPresentation:I
    .end local v21           #number:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2985
    .end local v14           #c:Lcom/android/internal/telephony/Connection;
    :cond_3
    return-void

    .line 2934
    .restart local v6       #presentation:I
    .restart local v8       #date:J
    .restart local v10       #duration:J
    .restart local v14       #c:Lcom/android/internal/telephony/Connection;
    .restart local v21       #number:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 2943
    .restart local v7       #callLogType:I
    .restart local v22       #o:Ljava/lang/Object;
    :cond_5
    check-cast v22, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v22           #o:Ljava/lang/Object;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto :goto_1

    .restart local v5       #logNumber:Ljava/lang/String;
    :cond_6
    move/from16 v20, v6

    .line 2950
    goto :goto_2

    .line 2964
    .restart local v2       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .restart local v12       #recordPath:Ljava/lang/String;
    .restart local v20       #newPresentation:I
    :catch_0
    move-exception v19

    .line 2966
    .local v19, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CallNotifier"

    const-string v13, "Error!! - onDisconnect() Disk Full!"

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_3

    .line 2975
    .end local v19           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_7
    const/16 v3, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_4
.end method

.method private onCfiChanged(ZI)V
    .locals 1
    .parameter "visible"
    .parameter "simId"

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NotificationMgr;->updateCfi(ZI)V

    .line 2385
    return-void
.end method

.method private onCustomRingQueryComplete()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, isQueryExecutionTimeExpired:Z
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 1057
    :try_start_0
    iget v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 1058
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1059
    const/4 v0, 0x1

    .line 1061
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    if-eqz v0, :cond_1

    .line 1065
    const-string v3, "CallNotifier"

    const-string v4, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const v3, 0x112a0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1081
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_2

    .line 1082
    const-string v3, "CallNotifier"

    const-string v4, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :goto_0
    return-void

    .line 1061
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1089
    :cond_2
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "af"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====set connect name in call notify="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 1091
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1092
    .local v2, rc:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/BaiduPhoneUtil;->getCalleeAddress(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, number:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "CallNotifier"

    const-string v4, "====call getBroadCastContent(number) 4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->getBroadCastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 1096
    .end local v1           #number:Ljava/lang/String;
    .end local v2           #rc:Lcom/android/internal/telephony/Call;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->setConnectName(Ljava/lang/String;)V

    .line 1097
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    .line 1100
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1102
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1103
    invoke-static {}, Lcom/android/phone/VTCallUtils;->showVTIncomingCallUi()V

    goto :goto_0

    .line 1105
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;I)V
    .locals 51
    .parameter "r"
    .parameter "simId"

    .prologue
    .line 1798
    const/16 v40, 0x0

    .line 1799
    .local v40, isSipCall:Z
    const/16 v25, 0x0

    .line 1800
    .local v25, autoretrySetting:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v48

    .line 1802
    .local v48, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v48

    if-ne v0, v4, :cond_0

    .line 1803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v4, v15}, Lcom/android/phone/PhoneApp;->requestAudioFocus(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1804
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1807
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    .line 1809
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1810
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/Connection;

    .line 1811
    .local v18, c:Lcom/android/internal/telephony/Connection;
    if-eqz v18, :cond_25

    .line 1812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDisconnect: cause = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", incoming = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", date = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1820
    :goto_0
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_1

    .line 1821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v15, "call_auto_retry"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v15, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 1826
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1828
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_2

    .line 1830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1833
    const/16 v4, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1834
    const/16 v4, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1838
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v4, v4, Lcom/android/phone/InCallUiState;->delayFinished:Z

    if-eqz v4, :cond_26

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v48

    if-ne v0, v4, :cond_26

    .line 1839
    const-string v4, "Meet the case to cache the disconnect call information!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/android/phone/InCallUiState;->delayFinished:Z

    .line 1841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    new-instance v15, Lcom/android/phone/InCallUiState$FakeCall;

    invoke-direct {v15}, Lcom/android/phone/InCallUiState$FakeCall;-><init>()V

    iput-object v15, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 1842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v15

    iput-object v15, v4, Lcom/android/phone/InCallUiState$FakeCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    move/from16 v0, p2

    iput v0, v4, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    .line 1848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    iput v15, v4, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    .line 1856
    :goto_1
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v15, 0x3

    if-ne v4, v15, :cond_3

    .line 1858
    const/16 v40, 0x1

    .line 1863
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1865
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/phone/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    if-eqz v4, :cond_28

    .line 1866
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isVTActive()Z

    move-result v4

    if-nez v4, :cond_27

    .line 1871
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneRecorderHandler;->isVTRecording()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1872
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneRecorderHandler;->stopVideoRecord()V

    .line 1875
    :cond_4
    sget-object v4, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v15

    if-eq v4, v15, :cond_5

    .line 1876
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->closeVTManager()V

    .line 1904
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v46

    .line 1905
    .local v46, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_2c

    .line 1906
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1909
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1910
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1921
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v4, :cond_7

    .line 1922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1923
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1927
    :cond_7
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1928
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v41

    .line 1929
    .local v41, number:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1930
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1931
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->handleOtaspDisconnect()V

    .line 1937
    .end local v41           #number:Ljava/lang/String;
    :cond_9
    const/16 v49, 0x0

    .line 1940
    .local v49, toneToPlay:I
    if-eqz v18, :cond_b

    .line 1941
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v29

    .line 1942
    .local v29, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_2e

    .line 1943
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1944
    :cond_a
    const/16 v49, 0x2

    .line 2012
    .end local v29           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_b
    :goto_4
    if-nez v49, :cond_d

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v48

    if-ne v0, v4, :cond_d

    if-eqz v18, :cond_d

    .line 2015
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v29

    .line 2016
    .restart local v29       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_c

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_d

    .line 2019
    :cond_c
    const/16 v49, 0x5

    .line 2020
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 2022
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_d

    .line 2023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/SystemVibrator;

    invoke-static {v4, v15}, Lcom/android/phone/BaiduPhoneUtil;->playVibrator(Landroid/content/Context;Landroid/os/Vibrator;)V

    .line 2029
    .end local v29           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v35

    .line 2030
    .local v35, fg:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v28

    .line 2031
    .local v28, bg:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    .line 2032
    .local v27, bFg:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v26

    .line 2033
    .local v26, bBg:Lcom/android/internal/telephony/Call;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v48

    if-ne v0, v4, :cond_e

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 2037
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 2038
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 2041
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2044
    if-nez v49, :cond_f

    .line 2045
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 2048
    :cond_f
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v48

    if-ne v0, v4, :cond_10

    .line 2049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 2056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 2065
    :cond_10
    if-eqz v18, :cond_24

    .line 2066
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v41

    .line 2067
    .restart local v41       #number:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 2068
    .local v9, date:J
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v11

    .line 2074
    .local v11, duration:J
    const-string v4, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-static {v4, v0, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v30

    .line 2077
    .local v30, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v4

    if-nez v4, :cond_11

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x3e8

    div-long v21, v11, v21

    cmp-long v4, v19, v21

    if-eqz v4, :cond_11

    .line 2078
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v19, 0x3e8

    div-long v19, v11, v19

    move-wide/from16 v0, v19

    long-to-int v15, v0

    int-to-long v0, v15

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->formatDuration(J)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2086
    .end local v30           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_11
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v29

    .line 2087
    .restart local v29       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v44

    .line 2088
    .local v44, phone:Lcom/android/internal/telephony/Phone;
    const/4 v14, 0x0

    .line 2090
    .local v14, vtCall:I
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v50

    .line 2092
    .local v50, vtIdle:Z
    if-eqz v50, :cond_12

    .line 2093
    const/4 v14, 0x1

    .line 2096
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v41

    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v37

    .line 2100
    .local v37, isEmergencyNumber:Z
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_13

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_13

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_13

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_47

    :cond_13
    const/4 v4, 0x1

    :goto_5
    invoke-static {v4}, Lcom/android/phone/BaiduPhoneUtil;->detectBusy(Z)V

    .line 2105
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2106
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_48

    const/4 v8, 0x3

    .line 2114
    .local v8, callLogType:I
    :goto_6
    const/16 v38, 0x0

    .line 2115
    .local v38, isInBlackList:Z
    const/4 v4, 0x2

    if-eq v8, v4, :cond_14

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->getDisturbResult(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    move-result-object v45

    .line 2119
    .local v45, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    move-object/from16 v0, v45

    iget v4, v0, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    const/4 v15, 0x1

    if-ne v4, v15, :cond_4a

    const/16 v38, 0x1

    .line 2122
    .end local v45           #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    :cond_14
    :goto_7
    const/4 v13, 0x0

    .line 2124
    .local v13, simIdEx:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    .line 2125
    .local v5, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v6

    .line 2127
    .local v6, logNumber:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_15

    const-string v4, "- onDisconnect(): logNumber set to: xxxxxxx"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2134
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v7

    .line 2136
    .local v7, presentation:I
    invoke-interface/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_16

    .line 2137
    invoke-static/range {v41 .. v41}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v4, :cond_16

    .line 2139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v4, :cond_16

    .line 2140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 2149
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v15, 0x7f09000c

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v42

    .line 2154
    .local v42, okToLogEmergencyNumber:Z
    invoke-static/range {v44 .. v44}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_4b

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    const/16 v39, 0x1

    .line 2159
    .local v39, isOtaspNumber:Z
    :goto_8
    const-string v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2160
    .local v32, decrypt:Ljava/lang/String;
    const-string v4, "ro.crypto.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2161
    .local v33, decryptState:Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, "encrypted"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/16 v36, 0x1

    .line 2162
    .local v36, isDecrypt:Z
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decrypt = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decryptState = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2165
    if-nez v38, :cond_4d

    if-nez v36, :cond_4d

    if-eqz v37, :cond_17

    if-eqz v42, :cond_4d

    :cond_17
    if-nez v39, :cond_4d

    const/16 v43, 0x1

    .line 2171
    .local v43, okToLogThisCall:Z
    :goto_a
    if-eqz v43, :cond_1b

    .line 2172
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneApp;->getCallRecorFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2175
    .local v16, recordPath:Ljava/lang/String;
    if-ltz p2, :cond_18

    if-eqz v40, :cond_4f

    .line 2176
    :cond_18
    if-eqz v40, :cond_4e

    .line 2177
    const/4 v13, -0x2

    .line 2185
    :cond_19
    :goto_b
    new-instance v3, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/android/phone/CallNotifier;->isRingOnceCall(Lcom/android/internal/telephony/Connection;I)I

    move-result v15

    invoke-direct/range {v3 .. v16}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJIIILjava/lang/String;)V

    .line 2215
    .local v3, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :goto_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v4, v3}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2222
    :goto_d
    new-instance v31, Landroid/content/Intent;

    const-string v4, "SAVE_CALL_TIME"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2223
    .local v31, ct:Landroid/content/Intent;
    if-nez p2, :cond_51

    .line 2224
    const-string v4, "simId"

    const-wide/16 v19, 0x0

    move-object/from16 v0, v31

    move-wide/from16 v1, v19

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2228
    :cond_1a
    :goto_e
    const-string v4, "ross"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "send broadcast singal sim"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    const-string v4, "calltime"

    const-wide/16 v19, 0x3e8

    div-long v19, v11, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2235
    .end local v3           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v16           #recordPath:Ljava/lang/String;
    .end local v31           #ct:Landroid/content/Intent;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v15, :cond_1c

    .line 2236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearCallRecordCache()V

    .line 2239
    :cond_1c
    const/4 v4, 0x3

    if-ne v8, v4, :cond_1f

    if-nez v38, :cond_1f

    .line 2243
    if-ltz p2, :cond_1d

    if-eqz v40, :cond_1e

    .line 2244
    :cond_1d
    move/from16 v13, p2

    .line 2246
    :cond_1e
    int-to-long v0, v13

    move-wide/from16 v21, v0

    move-object/from16 v17, p0

    move-wide/from16 v19, v9

    invoke-direct/range {v17 .. v22}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;JJ)V

    .line 2253
    :cond_1f
    if-eqz v49, :cond_20

    .line 2255
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v4, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2267
    :cond_20
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v48

    if-ne v0, v4, :cond_21

    .line 2272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v15, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v4, v15}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 2283
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v15, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v15, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v15, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v15, :cond_23

    :cond_22
    if-nez v37, :cond_23

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_23

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_23

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_23

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_23

    .line 2290
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v4, :cond_53

    .line 2291
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_52

    .line 2294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v44

    move-object/from16 v21, v41

    invoke-static/range {v19 .. v24}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 2295
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 2304
    :cond_23
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/android/phone/CallNotifier;->supportUBC(Lcom/android/internal/telephony/Connection;I)V

    .line 2306
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v6           #logNumber:Ljava/lang/String;
    .end local v7           #presentation:I
    .end local v8           #callLogType:I
    .end local v9           #date:J
    .end local v11           #duration:J
    .end local v13           #simIdEx:I
    .end local v14           #vtCall:I
    .end local v29           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v32           #decrypt:Ljava/lang/String;
    .end local v33           #decryptState:Ljava/lang/String;
    .end local v36           #isDecrypt:Z
    .end local v37           #isEmergencyNumber:Z
    .end local v38           #isInBlackList:Z
    .end local v39           #isOtaspNumber:Z
    .end local v41           #number:Ljava/lang/String;
    .end local v42           #okToLogEmergencyNumber:Z
    .end local v43           #okToLogThisCall:Z
    .end local v44           #phone:Lcom/android/internal/telephony/Phone;
    .end local v50           #vtIdle:Z
    :cond_24
    return-void

    .line 1816
    .end local v26           #bBg:Lcom/android/internal/telephony/Call;
    .end local v27           #bFg:Lcom/android/internal/telephony/Call;
    .end local v28           #bg:Lcom/android/internal/telephony/Call;
    .end local v35           #fg:Lcom/android/internal/telephony/Call;
    .end local v46           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v49           #toneToPlay:I
    :cond_25
    const-string v4, "CallNotifier"

    const-string v15, "onDisconnect: null connection"

    invoke-static {v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1851
    :cond_26
    const-string v4, "Don\'t meet the case clear disconnect call information!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    goto/16 :goto_1

    .line 1879
    :cond_27
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_5

    .line 1880
    const-string v4, "onDisconnect: VT is active now, so do nothing for VTManager ..."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1883
    :cond_28
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_29

    .line 1884
    const-string v4, "onDisconnect: set VTInCallScreenFlags.getInstance().mVTShouldCloseVTManager = true"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1885
    :cond_29
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v4

    const/4 v15, 0x1

    iput-boolean v15, v4, Lcom/android/phone/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    goto/16 :goto_2

    .line 1912
    .restart local v46       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_2a
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2b

    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1913
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_3

    .line 1916
    :cond_2c
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2d

    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1917
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_3

    .line 1945
    .restart local v29       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v49       #toneToPlay:I
    :cond_2e
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_2f

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_2f

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_31

    .line 1948
    :cond_2f
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_30

    const-string v4, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1949
    :cond_30
    const/16 v49, 0x3

    goto/16 :goto_4

    .line 1950
    :cond_31
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_32

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_34

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1953
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_33

    const-string v4, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1954
    :cond_33
    const/16 v49, 0xc

    goto/16 :goto_4

    .line 1955
    :cond_34
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_36

    .line 1956
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_35

    const-string v4, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1957
    :cond_35
    const/16 v49, 0x7

    goto/16 :goto_4

    .line 1958
    :cond_36
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_38

    .line 1959
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_37

    const-string v4, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1960
    :cond_37
    const/16 v49, 0x8

    goto/16 :goto_4

    .line 1961
    :cond_38
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_3a

    .line 1962
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_39

    const-string v4, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1963
    :cond_39
    const/16 v49, 0x9

    goto/16 :goto_4

    .line 1964
    :cond_3a
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_3c

    .line 1965
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_3b

    const-string v4, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1966
    :cond_3b
    const/16 v49, 0xa

    goto/16 :goto_4

    .line 1967
    :cond_3c
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_3d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v0, v4, :cond_3d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_40

    .line 1971
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1974
    const-string v4, "display incallscreen again!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1975
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->initFakeCall(Lcom/android/internal/telephony/Connection;I)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/android/phone/PhoneApp;->displayCallScreen(Z)V

    .line 1979
    :cond_3e
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_3f

    const-string v4, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1980
    :cond_3f
    const/16 v49, 0xe

    goto/16 :goto_4

    .line 1981
    :cond_40
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_42

    .line 1982
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_41

    const-string v4, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1983
    :cond_41
    const/16 v49, 0x5

    goto/16 :goto_4

    .line 1984
    :cond_42
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_b

    .line 1990
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_43

    const-string v4, "cause is FDN_BLOCKED"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1991
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v15, Lcom/android/phone/Constants$CallStatusCode;->FDN_BLOCKED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v4, v15}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 1993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 1994
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_44

    const-string v4, "cause FDN showGenericErrorDialog"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1995
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    const v15, 0x7f0b0022

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_4

    .line 1997
    :cond_45
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/android/phone/PhoneApp;->displayCallScreen(Z)V

    goto/16 :goto_4

    .line 2000
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/android/phone/PhoneApp;->displayCallScreen(Z)V

    goto/16 :goto_4

    .line 2100
    .restart local v9       #date:J
    .restart local v11       #duration:J
    .restart local v14       #vtCall:I
    .restart local v26       #bBg:Lcom/android/internal/telephony/Call;
    .restart local v27       #bFg:Lcom/android/internal/telephony/Call;
    .restart local v28       #bg:Lcom/android/internal/telephony/Call;
    .restart local v35       #fg:Lcom/android/internal/telephony/Call;
    .restart local v37       #isEmergencyNumber:Z
    .restart local v41       #number:Ljava/lang/String;
    .restart local v44       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v50       #vtIdle:Z
    :cond_47
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2106
    :cond_48
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 2109
    :cond_49
    const/4 v8, 0x2

    .restart local v8       #callLogType:I
    goto/16 :goto_6

    .line 2119
    .restart local v38       #isInBlackList:Z
    .restart local v45       #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    :cond_4a
    const/16 v38, 0x0

    goto/16 :goto_7

    .line 2154
    .end local v45           #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    .restart local v5       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v6       #logNumber:Ljava/lang/String;
    .restart local v7       #presentation:I
    .restart local v13       #simIdEx:I
    .restart local v42       #okToLogEmergencyNumber:Z
    :cond_4b
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 2161
    .restart local v32       #decrypt:Ljava/lang/String;
    .restart local v33       #decryptState:Ljava/lang/String;
    .restart local v39       #isOtaspNumber:Z
    :cond_4c
    const/16 v36, 0x0

    goto/16 :goto_9

    .line 2165
    .restart local v36       #isDecrypt:Z
    :cond_4d
    const/16 v43, 0x0

    goto/16 :goto_a

    .line 2179
    .restart local v16       #recordPath:Ljava/lang/String;
    .restart local v43       #okToLogThisCall:Z
    :cond_4e
    const/4 v13, 0x0

    .line 2180
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2182
    const/4 v13, 0x1

    goto/16 :goto_b

    .line 2196
    :cond_4f
    const/4 v13, 0x0

    .line 2197
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardGemini(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 2198
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v47

    .line 2199
    .local v47, si:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v47, :cond_50

    .line 2200
    move-object/from16 v0, v47

    iget-wide v0, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v13, v0

    .line 2204
    .end local v47           #si:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :cond_50
    new-instance v3, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/android/phone/CallNotifier;->isRingOnceCall(Lcom/android/internal/telephony/Connection;I)I

    move-result v15

    invoke-direct/range {v3 .. v16}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJIIILjava/lang/String;)V

    .restart local v3       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    goto/16 :goto_c

    .line 2216
    :catch_0
    move-exception v34

    .line 2218
    .local v34, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "CallNotifier"

    const-string v15, "Error!! - onDisconnect() Disk Full!"

    invoke-static {v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-virtual/range {v34 .. v34}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto/16 :goto_d

    .line 2225
    .end local v34           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v31       #ct:Landroid/content/Intent;
    :cond_51
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1a

    .line 2226
    const-string v4, "simId"

    const-wide/16 v19, 0x1

    move-object/from16 v0, v31

    move-wide/from16 v1, v19

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_e

    .line 2297
    .end local v3           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v16           #recordPath:Ljava/lang/String;
    .end local v31           #ct:Landroid/content/Intent;
    :cond_52
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_f

    .line 2300
    :cond_53
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_f
.end method

.method private onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V
    .locals 33
    .parameter "r"
    .parameter "simId"

    .prologue
    .line 3288
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/Connection;

    .line 3290
    .local v18, c:Lcom/android/internal/telephony/Connection;
    if-eqz v18, :cond_4

    .line 3292
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v30

    .line 3293
    .local v30, number:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 3294
    .local v10, date:J
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v12

    .line 3295
    .local v12, duration:J
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v24

    .line 3296
    .local v24, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v31

    .line 3298
    .local v31, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_5

    const/16 v28, 0x1

    .line 3301
    .local v28, isSipCall:Z
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3302
    const/4 v15, 0x1

    .line 3306
    .local v15, vtCall:I
    :goto_1
    const/16 v23, 0x3

    .line 3308
    .local v23, callLogType:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 3309
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 3310
    .local v7, logNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v8

    .line 3312
    .local v8, presentation:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneApp;->getCallRecorFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3315
    .local v16, recordPath:Ljava/lang/String;
    if-ltz p2, :cond_0

    if-eqz v28, :cond_8

    .line 3317
    :cond_0
    if-eqz v28, :cond_7

    .line 3318
    const/4 v14, -0x2

    .line 3325
    .local v14, simIdEx:I
    :cond_1
    :goto_2
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x3

    invoke-direct/range {v4 .. v16}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJIILjava/lang/String;)V

    .line 3343
    .local v4, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :goto_3
    if-nez v28, :cond_3

    .line 3344
    const-wide/16 v25, 0xbb8

    .line 3345
    .local v25, delayMillis:J
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v29

    .line 3346
    .local v29, message:Landroid/os/Message;
    const/16 v5, 0x12

    move-object/from16 v0, v29

    iput v5, v0, Landroid/os/Message;->what:I

    .line 3347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v5, :cond_2

    .line 3348
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 3352
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3353
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3354
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v9, 0x7f0b040d

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v5, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3362
    .end local v25           #delayMillis:J
    .end local v29           #message:Landroid/os/Message;
    :cond_3
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v5, v4}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3368
    :goto_5
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v17, p0

    move-wide/from16 v19, v10

    invoke-direct/range {v17 .. v22}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;JJ)V

    .line 3371
    .end local v4           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v7           #logNumber:Ljava/lang/String;
    .end local v8           #presentation:I
    .end local v10           #date:J
    .end local v12           #duration:J
    .end local v14           #simIdEx:I
    .end local v15           #vtCall:I
    .end local v16           #recordPath:Ljava/lang/String;
    .end local v23           #callLogType:I
    .end local v24           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v28           #isSipCall:Z
    .end local v30           #number:Ljava/lang/String;
    .end local v31           #phone:Lcom/android/internal/telephony/Phone;
    :cond_4
    return-void

    .line 3298
    .restart local v10       #date:J
    .restart local v12       #duration:J
    .restart local v24       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v30       #number:Ljava/lang/String;
    .restart local v31       #phone:Lcom/android/internal/telephony/Phone;
    :cond_5
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 3304
    .restart local v28       #isSipCall:Z
    :cond_6
    const/4 v15, 0x0

    .restart local v15       #vtCall:I
    goto/16 :goto_1

    .line 3320
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v7       #logNumber:Ljava/lang/String;
    .restart local v8       #presentation:I
    .restart local v16       #recordPath:Ljava/lang/String;
    .restart local v23       #callLogType:I
    :cond_7
    const/4 v14, 0x0

    .line 3321
    .restart local v14       #simIdEx:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3322
    const/4 v14, 0x1

    goto :goto_2

    .line 3330
    .end local v14           #simIdEx:I
    :cond_8
    const/4 v14, 0x0

    .line 3331
    .restart local v14       #simIdEx:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardGemini(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3332
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    move/from16 v0, p2

    invoke-static {v5, v0}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v32

    .line 3334
    .local v32, si:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v32, :cond_9

    .line 3335
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v14, v0

    .line 3338
    .end local v32           #si:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :cond_9
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x3

    invoke-direct/range {v4 .. v16}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJIILjava/lang/String;)V

    .restart local v4       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    goto/16 :goto_3

    .line 3356
    .restart local v25       #delayMillis:J
    .restart local v29       #message:Landroid/os/Message;
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v9, 0x7f0b040e

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v5, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 3363
    .end local v25           #delayMillis:J
    .end local v29           #message:Landroid/os/Message;
    :catch_0
    move-exception v27

    .line 3365
    .local v27, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v5, "CallNotifier"

    const-string v9, "Error!! - onDisconnect() Disk Full!"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_5
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 2759
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 2761
    .local v1, displayInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v1, :cond_1

    .line 2762
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 2763
    .local v0, displayInfo:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2764
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 2767
    const/16 v2, 0x19

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2770
    .end local v0           #displayInfo:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onMwiChanged(ZI)V
    .locals 2
    .parameter "visible"
    .parameter "simId"

    .prologue
    .line 2350
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_0

    .line 2356
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :goto_0
    return-void

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NotificationMgr;->updateMwi(ZI)V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;I)V
    .locals 11
    .parameter "r"
    .parameter "msgId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 686
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 687
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewRingingConnection(): state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", conn = { "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " }"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 689
    .local v4, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 690
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 691
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, number:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CallNotifier"

    const-string v8, "====call getBroadCastContent(number) 5"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->getBroadCastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 694
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/phone/Ringer;->setConnectName(Ljava/lang/String;)V

    .line 698
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7, v0}, Lcom/android/phone/PhoneUtils;->getDisturbResult(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    move-result-object v3

    .line 699
    .local v3, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    iget v7, v3, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    if-ne v7, v9, :cond_3

    .line 700
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 701
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->getCallingSimID(Lcom/android/internal/telephony/Connection;)I

    move-result v5

    .line 702
    .local v5, simId:I
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v8, v3, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->reason:I

    invoke-static {v7, v0, v5, v8}, Lcom/android/phone/PhoneUtils;->addDisturbCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;II)V

    .line 703
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "reject the call, because in black list"

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 811
    .end local v5           #simId:I
    :cond_2
    :goto_0
    return-void

    .line 705
    :cond_3
    iget v7, v3, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 708
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 710
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 711
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "silent treatment, because not in vip list and contact"

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_4
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    .line 718
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 723
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 724
    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    goto :goto_0

    .line 728
    :cond_5
    if-nez v0, :cond_6

    .line 729
    const-string v7, "CallNotifier"

    const-string v8, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 734
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v7

    if-nez v7, :cond_7

    .line 735
    const-string v7, "CallNotifier"

    const-string v8, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 747
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 783
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 784
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 785
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 788
    :cond_8
    sput-boolean v10, Lcom/android/phone/CallNotifier;->mIsWaitingQueryComplete:Z

    .line 789
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v7, :cond_9

    .line 790
    new-instance v7, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v7, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 791
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 793
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "r"

    .prologue
    .line 1183
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    .line 1185
    .local v6, state:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v8, :cond_0

    .line 1186
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/SystemVibrator;

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/SystemVibrator;

    .line 1189
    :cond_0
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v6}, Lcom/android/phone/PhoneApp;->requestAudioFocus(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1193
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v9, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v8, :cond_16

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 1196
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1197
    .local v3, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 1198
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_3

    .line 1201
    :cond_1
    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v8, :cond_2

    .line 1202
    const/16 v7, 0xb

    .line 1203
    .local v7, toneToPlay:I
    new-instance v8, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v8, p0, v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1206
    .end local v7           #toneToPlay:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1208
    :cond_3
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1211
    :cond_4
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 1216
    .local v4, lastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v6}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1223
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 1225
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v8, :cond_b

    .line 1227
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v8, :cond_5

    .line 1228
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1229
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1232
    :cond_5
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1240
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1244
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_17

    .line 1245
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1252
    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1253
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v9, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1262
    :cond_7
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_8

    const-string v8, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1263
    :cond_8
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v8, :cond_9

    .line 1264
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1280
    :cond_9
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1281
    .local v5, pm:Landroid/os/PowerManager;
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1282
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_a

    const-string v8, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1284
    :cond_a
    const/16 v8, 0x1c

    invoke-virtual {p0, v8}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1285
    const/16 v0, 0x3e8

    .line 1286
    .local v0, IN_CALL_NOTIFICATION_UPDATE_DELAY:I
    const/16 v8, 0x1c

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1291
    .end local v0           #IN_CALL_NOTIFICATION_UPDATE_DELAY:I
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v5           #pm:Landroid/os/PowerManager;
    :cond_b
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    .line 1292
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1293
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1296
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1297
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v8, :cond_c

    .line 1298
    new-instance v8, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v8, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1301
    :cond_c
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v8, :cond_d

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_18

    .line 1302
    :cond_d
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "emergency_tone"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1305
    iget v8, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v8, :cond_e

    .line 1307
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v8, :cond_e

    .line 1308
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v8}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$200(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1321
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_e
    :goto_2
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_f

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_10

    .line 1323
    :cond_f
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1324
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-nez v8, :cond_10

    .line 1327
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v8, :cond_10

    .line 1328
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1329
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1335
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_10
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_13

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_13

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_13

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_13

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_13

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_13

    .line 1341
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_11

    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPhoneStateChanged mCM.getActiveFgCallState()= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_11
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_12

    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPhoneStateChanged mPreviousCallState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_12
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/SystemVibrator;

    invoke-static {v8, v9}, Lcom/android/phone/BaiduPhoneUtil;->playVibrator(Landroid/content/Context;Landroid/os/Vibrator;)V

    .line 1347
    :cond_13
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_14

    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "before set value, mPreviousCallState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_14
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 1349
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_15

    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "end after set value, mPreviousCallState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_15
    return-void

    .line 1193
    .end local v3           #fgPhone:Lcom/android/internal/telephony/Phone;
    .end local v4           #lastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1246
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v3       #fgPhone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #lastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_17
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_6

    const-string v8, "TTY"

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1247
    invoke-static {}, Lcom/android/phone/PhoneUtils;->openTTY()V

    goto/16 :goto_1

    .line 1311
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    :cond_18
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_e

    .line 1312
    iget v8, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v8, :cond_e

    .line 1313
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v8, :cond_e

    .line 1314
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v8}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto/16 :goto_2
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 3163
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 3164
    .local v0, muteState:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3165
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3166
    return-void

    .line 3164
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3138
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3140
    .local v0, playTone:Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3145
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3146
    .local v1, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v2, :cond_0

    .line 3148
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3149
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 3157
    .end local v1           #state:Lcom/android/internal/telephony/Call$State;
    :cond_0
    :goto_0
    return-void

    .line 3152
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v2, :cond_0

    .line 3153
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 3154
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 2806
    sget-boolean v7, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v7, :cond_1

    .line 2807
    const-string v7, "CallNotifier"

    const-string v8, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    :cond_0
    :goto_0
    return-void

    .line 2811
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 2812
    .local v0, callstate:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2815
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 2818
    :cond_2
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v2, v7

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 2820
    .local v2, signalInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v2, :cond_0

    .line 2821
    iget-boolean v1, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 2822
    .local v1, isPresent:Z
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: isPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2823
    :cond_3
    if-eqz v1, :cond_0

    .line 2824
    iget v6, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 2825
    .local v6, uSignalType:I
    iget v4, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 2826
    .local v4, uAlertPitch:I
    iget v5, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 2828
    .local v5, uSignal:I
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: uSignalType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uAlertPitch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uSignal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2831
    :cond_4
    invoke-static {v6, v4, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v3

    .line 2835
    .local v3, toneID:I
    new-instance v7, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v7, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1115
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 1118
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1120
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1121
    invoke-static {}, Lcom/android/phone/VTCallUtils;->showVTIncomingCallUi()V

    .line 1129
    :cond_1
    :goto_0
    return-void

    .line 1123
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1572
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1573
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1574
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1575
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1576
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x1f

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1577
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1578
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x21

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1579
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x22

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1580
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x24

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1581
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x25

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1585
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1586
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1587
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1588
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1605
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1608
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/16 v1, 0x26

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1622
    :goto_0
    return-void

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x1a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1615
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1616
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1617
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1618
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1619
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2342
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2343
    return-void
.end method

.method private showIncomingCall()V
    .locals 2

    .prologue
    .line 1151
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCall()...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1156
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1170
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi()V

    .line 1172
    return-void

    .line 1157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;JJ)V
    .locals 16
    .parameter "c"
    .parameter "date"
    .parameter "simId"

    .prologue
    .line 3012
    new-instance v14, Lcom/android/phone/CallNotifier$CustomInfo;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/phone/CallNotifier$CustomInfo;-><init>(Lcom/android/phone/CallNotifier;)V

    .line 3013
    .local v14, customInfo:Lcom/android/phone/CallNotifier$CustomInfo;
    move-wide/from16 v0, p2

    iput-wide v0, v14, Lcom/android/phone/CallNotifier$CustomInfo;->date:J

    .line 3014
    if-eqz p1, :cond_2

    .line 3015
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput v2, v14, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    .line 3019
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v14}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v15

    .line 3021
    .local v15, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v15, :cond_5

    .line 3025
    iget-boolean v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_0

    .line 3028
    iget-object v13, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3033
    .local v13, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v13, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3034
    .local v3, name:Ljava/lang/String;
    iget-object v4, v13, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3035
    .local v4, number:Ljava/lang/String;
    iget v2, v13, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v2, v5, :cond_3

    .line 3036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v5, 0x7f0b0010

    invoke-virtual {v2, v5}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3043
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v13, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v7, v13, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    move-wide/from16 v8, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JIJ)V

    .line 3051
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v13           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_3
    return-void

    .line 3015
    .end local v15           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3017
    :cond_2
    const/4 v2, 0x0

    iput v2, v14, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    goto :goto_1

    .line 3037
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v13       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v15       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_3
    iget v2, v13, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v2, v5, :cond_4

    .line 3038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v5, 0x7f0b000f

    invoke-virtual {v2, v5}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 3040
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v5, v13, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v2, v13, v4, v5}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 3049
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v13           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    const-string v2, "CallNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 11
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    .line 948
    const/4 v5, 0x0

    .line 949
    .local v5, shouldStartQuery:Z
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 950
    :try_start_0
    iget v8, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v8, :cond_0

    .line 951
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 952
    const/4 v5, 0x1

    .line 954
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    if-eqz v5, :cond_4

    .line 958
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 959
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v9, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 992
    :goto_0
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v8, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 997
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v8, :cond_3

    .line 999
    iget-object v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v10, p0, v8}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1035
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :goto_1
    return-void

    .line 954
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 962
    :cond_1
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 964
    .local v4, ringToneUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v7

    .line 965
    .local v7, slot:I
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v6

    .line 966
    .local v6, simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v6, :cond_2

    .line 967
    iget-object v3, v6, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mCallRingTone:Ljava/lang/String;

    .line 968
    .local v3, ringTone:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 969
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 973
    .end local v3           #ringTone:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v8, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1002
    .end local v4           #ringToneUri:Landroid/net/Uri;
    .end local v6           #simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .end local v7           #slot:I
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_3
    const/16 v8, 0x64

    const-wide/16 v9, 0x1f4

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1011
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_4
    const v8, 0x112a1

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1013
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1014
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1015
    .local v2, rc:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/BaiduPhoneUtil;->getCalleeAddress(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, number:Ljava/lang/String;
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "CallNotifier"

    const-string v9, "====call getBroadCastContent(number) 2"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->getBroadCastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 1018
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/phone/Ringer;->setConnectName(Ljava/lang/String;)V

    .line 1020
    .end local v1           #number:Ljava/lang/String;
    .end local v2           #rc:Lcom/android/internal/telephony/Call;
    :cond_6
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->ring()V

    .line 1024
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_7

    const-string v8, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1026
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1027
    invoke-static {}, Lcom/android/phone/VTCallUtils;->showVTIncomingCallUi()V

    goto/16 :goto_1

    .line 1029
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto/16 :goto_1
.end method

.method private supportUBC(Lcom/android/internal/telephony/Connection;I)V
    .locals 7
    .parameter "c"
    .parameter "callLogType"

    .prologue
    .line 2310
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2312
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 2313
    .local v1, ringTime:J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2314
    .local v0, number:Ljava/lang/String;
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    const-wide/16 v3, 0xbb8

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 2315
    const-string v3, "UBC : UBCUtils.submitRingOnce"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2316
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0xd08

    invoke-static {v3, v4, v5, v0}, Lcom/android/phone/UBCUtils;->submitRingOnce(Landroid/content/Context;JLjava/lang/String;)V

    .line 2324
    .end local v0           #number:Ljava/lang/String;
    .end local v1           #ringTime:J
    :cond_0
    :goto_0
    return-void

    .line 2321
    :cond_1
    const-string v3, "UBC : count of MO call"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2322
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x5e1

    invoke-static {v3, v4, v5}, Lcom/android/phone/UBCUtils;->submit(Landroid/content/Context;J)V

    goto :goto_0
.end method


# virtual methods
.method getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "conn"

    .prologue
    .line 3229
    const/4 v0, 0x0

    .line 3230
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 3232
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 3233
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 3239
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 3234
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 3235
    const/4 v0, 0x0

    goto :goto_0

    .line 3237
    :cond_2
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method getIsCdmaRedialCall()Z
    .locals 1

    .prologue
    .line 3005
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 3253
    if-nez p2, :cond_2

    .line 3254
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3260
    .local v0, presentation:I
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3261
    :cond_1
    return v0

    .line 3256
    .end local v0           #presentation:I
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3257
    .restart local v0       #presentation:I
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 2998
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 356
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 595
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 359
    :sswitch_1
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "RINGING... (new)"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 360
    :cond_1
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 361
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;I)V

    .line 362
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mConnectionMsgHandled:Z

    goto :goto_0

    .line 367
    :sswitch_2
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "PHONE_INCOMING_RING ! "

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 370
    :cond_2
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->registerAccelero()V

    .line 371
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 372
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v1, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 373
    .local v1, pb:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mConnectionMsgHandled:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    if-eqz v5, :cond_6

    .line 378
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 380
    :cond_3
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 381
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 382
    .local v3, rc:Lcom/android/internal/telephony/Call;
    invoke-static {v3}, Lcom/android/phone/BaiduPhoneUtil;->getCalleeAddress(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, number:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "CallNotifier"

    const-string v6, "====call getBroadCastContent(number) 1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->getBroadCastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 385
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/phone/Ringer;->setConnectName(Ljava/lang/String;)V

    .line 387
    .end local v0           #number:Ljava/lang/String;
    .end local v3           #rc:Lcom/android/internal/telephony/Call;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .line 389
    :cond_6
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "RING before NEW_RING, skipping"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    .end local v1           #pb:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_3
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, " - handleMessage : RING INFO for video call ! "

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 399
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v5, :cond_a

    .line 400
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "RINGING... (PHONE_VT_RING_INFO event)"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 401
    :cond_8
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "device_provisioned"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    .line 403
    .local v2, provisioned2:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 405
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .end local v2           #provisioned2:Z
    :cond_9
    move v2, v6

    .line 401
    goto :goto_1

    .line 408
    :cond_a
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "RING before NEW_RING, skipping"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :sswitch_4
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_b

    const-string v5, " - handleMessage : PHONE_WAITING_DISCONNECT ! "

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 414
    :cond_b
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5, v8}, Lcom/android/phone/CallNotifier;->onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 418
    :sswitch_5
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, " - handleMessage : PHONE_WAITING_DISCONNECT1 ! "

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 419
    :cond_c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallNotifier;->onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 423
    :sswitch_6
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_d

    const-string v5, " - handleMessage : PHONE_WAITING_DISCONNECT2 ! "

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 424
    :cond_d
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5, v2}, Lcom/android/phone/CallNotifier;->onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 428
    :sswitch_7
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v5, :cond_0

    .line 429
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 430
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto/16 :goto_0

    .line 436
    :sswitch_8
    const-string v5, "CallNotifier Phone state change"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 437
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 440
    :sswitch_9
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->unregisterAccelero()V

    .line 441
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_e

    const-string v5, "DISCONNECT SIM1"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 442
    :cond_e
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 443
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mConnectionMsgHandled:Z

    .line 444
    sget-boolean v5, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    if-eqz v5, :cond_f

    .line 445
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 447
    :cond_f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 450
    :sswitch_a
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->unregisterAccelero()V

    .line 451
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_10

    const-string v5, "DISCONNECT SIM2"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 452
    :cond_10
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 453
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mConnectionMsgHandled:Z

    .line 454
    sget-boolean v5, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    if-nez v5, :cond_11

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    if-eqz v5, :cond_11

    .line 455
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 457
    :cond_11
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5, v2}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 460
    :sswitch_b
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->unregisterAccelero()V

    .line 461
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_12

    const-string v5, "DISCONNECT"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 462
    :cond_12
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 463
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mConnectionMsgHandled:Z

    .line 464
    sget-boolean v5, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    if-nez v5, :cond_13

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->ok2Ring:Z

    if-eqz v5, :cond_13

    .line 465
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 467
    :cond_13
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5, v8}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 472
    :sswitch_c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 479
    :sswitch_d
    const-string v5, "CallNotifier"

    const-string v6, "CallerInfo query took too long; manually starting ringer"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto/16 :goto_0

    .line 489
    :sswitch_e
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V

    goto/16 :goto_0

    .line 493
    :sswitch_f
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v5

    invoke-direct {p0, v5, v2}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V

    goto/16 :goto_0

    .line 497
    :sswitch_10
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto/16 :goto_0

    .line 501
    :sswitch_11
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_14

    const-string v5, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 502
    :cond_14
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 506
    :sswitch_12
    const-string v5, "CallNotifier"

    const-string v6, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 511
    :sswitch_13
    const-string v5, "CallNotifier"

    const-string v6, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 513
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 517
    :sswitch_14
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_15

    const-string v5, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 519
    :cond_15
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5, v2}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 520
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_0

    .line 524
    :sswitch_15
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_16

    const-string v5, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 525
    :cond_16
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 529
    :sswitch_16
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_17

    const-string v5, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 530
    :cond_17
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 534
    :sswitch_17
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_18

    const-string v5, "Received Display Info notification done event ..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 535
    :cond_18
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 539
    :sswitch_18
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_19

    const-string v5, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 540
    :cond_19
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, p1}, Lcom/android/phone/PhoneApp;->handleOtaspEvent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 544
    :sswitch_19
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_1a

    const-string v5, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 545
    :cond_1a
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v5, :cond_0

    .line 546
    const/4 v4, 0x6

    .line 547
    .local v4, toneToPlay:I
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 548
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 550
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_1b

    const-string v5, "- updating notification for VP state..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 551
    :cond_1b
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 556
    .end local v4           #toneToPlay:I
    :sswitch_1a
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_1c

    const-string v5, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 557
    :cond_1c
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v5, :cond_0

    .line 558
    const/4 v4, 0x6

    .line 559
    .restart local v4       #toneToPlay:I
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 560
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 562
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_1d

    const-string v5, "- updating notification for VP state..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 563
    :cond_1d
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 569
    .end local v4           #toneToPlay:I
    :sswitch_1b
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_1e

    const-string v5, "- receive the ring back..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 570
    :cond_1e
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 575
    :sswitch_1c
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 587
    :sswitch_1d
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 589
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mQuickBackToInCallScreen:Lcom/android/phone/QuickBackToInCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/QuickBackToInCallScreen;->updateQuickBackToInCallScreenView()V

    goto/16 :goto_0

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_1
        0x3 -> :sswitch_b
        0x4 -> :sswitch_c
        0x5 -> :sswitch_2
        0x6 -> :sswitch_15
        0x7 -> :sswitch_16
        0x8 -> :sswitch_11
        0x9 -> :sswitch_19
        0xa -> :sswitch_1a
        0xb -> :sswitch_1b
        0xc -> :sswitch_1c
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x15 -> :sswitch_e
        0x16 -> :sswitch_10
        0x17 -> :sswitch_13
        0x18 -> :sswitch_14
        0x19 -> :sswitch_17
        0x1a -> :sswitch_18
        0x1b -> :sswitch_12
        0x1c -> :sswitch_1d
        0x1f -> :sswitch_9
        0x20 -> :sswitch_a
        0x21 -> :sswitch_1
        0x22 -> :sswitch_8
        0x24 -> :sswitch_c
        0x25 -> :sswitch_2
        0x26 -> :sswitch_1b
        0x27 -> :sswitch_1c
        0x28 -> :sswitch_f
        0x32 -> :sswitch_0
        0x64 -> :sswitch_d
    .end sparse-switch
.end method

.method hasPendingCallerInfoQuery()Z
    .locals 2

    .prologue
    .line 3433
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothAudioConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3485
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_1

    .line 3497
    :cond_0
    :goto_0
    return v2

    .line 3489
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 3491
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3494
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3495
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 3497
    .local v2, isAudioOn:Z
    goto :goto_0
.end method

.method public isBluetoothAvailable()Z
    .locals 4

    .prologue
    .line 3463
    const/4 v2, 0x0

    .line 3464
    .local v2, isConnected:Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 3465
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 3467
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3468
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3469
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    .line 3478
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    return v2
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 17
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1631
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/phone/CallNotifier$CustomInfo;

    if-eqz v2, :cond_1

    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-object/from16 v8, p2

    check-cast v8, Lcom/android/phone/CallNotifier$CustomInfo;

    iget-wide v8, v8, Lcom/android/phone/CallNotifier$CustomInfo;->date:J

    move-object/from16 v10, p2

    check-cast v10, Lcom/android/phone/CallNotifier$CustomInfo;

    iget v10, v10, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    check-cast p2, Lcom/android/phone/CallNotifier$CustomInfo;

    .end local p2
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/phone/CallNotifier$CustomInfo;->simId:J

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JIJ)V

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1636
    .restart local p2
    :cond_1
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/phone/CallNotifier;

    if-eqz v2, :cond_0

    .line 1640
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getBroadCastContent(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 1643
    const/16 v2, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1645
    const/4 v13, 0x0

    .line 1646
    .local v13, isQueryExecutionTimeOK:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1647
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 1648
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1649
    const/4 v13, 0x1

    .line 1651
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/CallNotifier;->mIsWaitingQueryComplete:Z

    .line 1654
    if-eqz v13, :cond_0

    .line 1659
    const/4 v14, 0x0

    .line 1660
    .local v14, isSipIncoming:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    const/4 v14, 0x1

    .line 1663
    :cond_3
    :goto_1
    const/16 v16, 0x0

    .line 1664
    .local v16, shouldAutoReject:Z
    if-nez v14, :cond_a

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBlackListManager:Lcom/android/phone/BlackListManager;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/BlackListManager;->shouldBlock(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v2, :cond_6

    :cond_4
    const/16 v16, 0x1

    .line 1675
    :goto_2
    if-eqz v16, :cond_d

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1677
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/CallNotifier;->mIsShouldSendtoVoicemail:Z

    goto/16 :goto_0

    .line 1651
    .end local v14           #isSipIncoming:Z
    .end local v16           #shouldAutoReject:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1661
    .restart local v14       #isSipIncoming:Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    .line 1666
    .restart local v16       #shouldAutoReject:Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 1668
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBlackListManager:Lcom/android/phone/BlackListManager;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/BlackListManager;->shouldBlock(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v2, :cond_9

    :cond_8
    const/16 v16, 0x1

    :goto_3
    goto :goto_2

    :cond_9
    const/16 v16, 0x0

    goto :goto_3

    .line 1671
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isRejectAllSIPCall()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemailSip:Z

    if-eqz v2, :cond_c

    :cond_b
    const/16 v16, 0x1

    :goto_4
    goto :goto_2

    :cond_c
    const/16 v16, 0x0

    goto :goto_4

    .line 1688
    :cond_d
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_f

    .line 1689
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "custom ringtone found, setting up ringer."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1690
    :cond_e
    check-cast p2, Lcom/android/phone/CallNotifier;

    .end local p2
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1691
    .local v15, r:Lcom/android/phone/Ringer;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v15, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1706
    .end local v15           #r:Lcom/android/phone/Ringer;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto/16 :goto_0
.end method

.method public onTimeToReminder()V
    .locals 2

    .prologue
    .line 1790
    const/16 v0, 0xf

    .line 1792
    .local v0, toneToPlay:I
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1793
    return-void
.end method

.method restartRinger()V
    .locals 5

    .prologue
    .line 2411
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "restartRinger()..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2412
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2429
    :cond_1
    :goto_0
    return-void

    .line 2414
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2418
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- ringingCall state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2419
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 2420
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 2421
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2422
    .local v1, rc:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/BaiduPhoneUtil;->getCalleeAddress(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 2423
    .local v0, number:Ljava/lang/String;
    const-string v3, "CallNotifier"

    const-string v4, "====call getBroadCastContent(number) 3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->getBroadCastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    .line 2425
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mBroadCastContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->setConnectName(Ljava/lang/String;)V

    .line 2427
    .end local v0           #number:Ljava/lang/String;
    .end local v1           #rc:Lcom/android/internal/telephony/Call;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0
.end method

.method sendBatteryLow()V
    .locals 2

    .prologue
    .line 2436
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2437
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 2438
    return-void
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 2911
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 2912
    return-void
.end method

.method sendMwiChangedDelayed(JI)V
    .locals 2
    .parameter "delayMillis"
    .parameter "simId"

    .prologue
    .line 2368
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2370
    .local v0, message:Landroid/os/Message;
    if-nez p3, :cond_0

    .line 2372
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2379
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2380
    return-void

    .line 2376
    :cond_0
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method silenceRinger()V
    .locals 1

    .prologue
    .line 2399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 2400
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2401
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2402
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 2848
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2849
    :cond_0
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2850
    return-void
.end method

.method unregisterCallNotifierRegistrations()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1427
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNotifier"

    const-string v1, "unregisterCallNotifierRegistrations..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1430
    invoke-virtual {p0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1431
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1432
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1436
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1437
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1438
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1439
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1440
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1445
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1446
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1447
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1448
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1449
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1450
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1451
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1452
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1453
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1454
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1456
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1457
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1458
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1459
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1460
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1461
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1462
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1463
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1464
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1465
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1469
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    .line 1470
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    .line 1471
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V

    .line 1472
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V

    .line 1496
    return-void
.end method

.method unregisterCallNotifierRegistrations(I)V
    .locals 5
    .parameter "flag"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1354
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallNotifierRegistrations flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1357
    invoke-virtual {p0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1358
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1359
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1363
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1364
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1365
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1366
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1367
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1372
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1373
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1374
    if-nez p1, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1377
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1378
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1379
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1380
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1381
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1382
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1384
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1385
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1386
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1387
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1388
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1389
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1390
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1391
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1392
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1393
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1397
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    .line 1398
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    .line 1399
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V

    .line 1400
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V

    .line 1424
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1499
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1504
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1505
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1506
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1507
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1508
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1509
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1510
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1511
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1512
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1514
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    .line 1515
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 1516
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 1517
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    .line 1518
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 1519
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 1520
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    .line 1521
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    .line 1522
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V

    .line 1523
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    .line 1541
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1546
    :cond_1
    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1549
    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1553
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V

    .line 1554
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V

    .line 1556
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V

    .line 1557
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V

    .line 1566
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 1567
    return-void
.end method
