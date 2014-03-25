.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$Record;,
        Landroid/media/AudioService$EnableHDMIAudioDeathHandler;,
        Landroid/media/AudioService$AudioPathToFMTxDeathHandler;,
        Landroid/media/AudioService$RcDisplayDeathHandler;,
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$RemotePlaybackState;,
        Landroid/media/AudioService$RcClientDeathHandler;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;
    }
.end annotation


# static fields
.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = true

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x1388

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final GETTXPATHENABLESTATE:Ljava/lang/String; = "GetFmTxEnable"

.field private static final GET_HDMI_AUDIO_STATUS:Ljava/lang/String; = "GetHDMIAudioStatus"

.field private static final HDMI_AUDIO_STATUS_DISABLED:Ljava/lang/String; = "GetHDMIAudioStatus=false"

.field private static final HDMI_AUDIO_STATUS_ENABLED:Ljava/lang/String; = "GetHDMIAudioStatus=true"

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0x19

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x7

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0xb

.field private static final MSG_CHECK_FM_ACTIVE:I = 0x81

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0x18

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x1a

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x1b

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x8

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x5

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xf

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0xa

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x1c

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x6

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x12

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x13

.field private static final MSG_RCDISPLAY_CLEAR:I = 0xc

.field private static final MSG_RCDISPLAY_UPDATE:I = 0xd

.field private static final MSG_REEVALUATE_REMOTE:I = 0x11

.field private static final MSG_REPORT_NEW_ROUTES:I = 0x10

.field private static final MSG_SET_A2DP_CONNECTION_STATE:I = 0x16

.field private static final MSG_SET_ALL_VOLUMES:I = 0xe

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0x14

.field private static final MSG_SET_FORCE_USE:I = 0x9

.field private static final MSG_SET_RSX_CONNECTION_STATE:I = 0x17

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x15

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_CURRENT:I = 0x1

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PERSIST_LAST_AUDIBLE:I = 0x2

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String; = null

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SETTXPATHDISENABLE:Ljava/lang/String; = "SetFmTxEnable=0"

.field private static final SETTXPATHENABLE:Ljava/lang/String; = "SetFmTxEnable=1"

.field private static final SET_HDMI_AUDIO_DISABLED:Ljava/lang/String; = "SetHDMIAudioEnable=0"

.field private static final SET_HDMI_AUDIO_ENABLED:Ljava/lang/String; = "SetHDMIAudioEnable=1"

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field public static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TXPATHDISABLESTATE:Ljava/lang/String; = "GetFmTxEnable=false"

.field private static final TXPATHENABLESTATE:Ljava/lang/String; = "GetFmTxEnable=true"

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;

.field private static sLastRccId:I

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final MAX_STREAM_VOLUME:[I

.field private final SAFE_MEDIA_VOLUME_ACTIVE:I

.field private final SAFE_MEDIA_VOLUME_DISABLED:I

.field private final SAFE_MEDIA_VOLUME_INACTIVE:I

.field private final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_NAMES:[Ljava/lang/String;

.field private final STREAM_VOLUME_ALIAS:[I

.field private final STREAM_VOLUME_ALIAS_NON_VOICE:[I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompleted:Z

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private mCheckSafeMediaType:I

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private mDeviceOrientation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field mFixedVolumeDevices:I

.field private mFmActiveMs:I

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mHasRemotePlayback:Z

.field private final mHasVibrator:Z

.field private mHeadsetOrHeadphoneOn:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMasterVolumeRamp:[I

.field private mMcc:I

.field private mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private mMediaServerOk:Z

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrevVolDirection:I

.field private final mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeIndexs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private mVoiceCapable:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private mVolumeControlStream:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Effect_Tick.ogg"

    aput-object v1, v0, v3

    const-string v1, "KeypressStandard.ogg"

    aput-object v1, v0, v4

    const-string v1, "KeypressSpacebar.ogg"

    aput-object v1, v0, v5

    const-string v1, "KeypressDelete.ogg"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 4432
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 4434
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    .line 5150
    sput v3, Landroid/media/AudioService;->sLastRccId:I

    .line 6599
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SILENT"

    aput-object v1, v0, v3

    const-string v1, "VIBRATE"

    aput-object v1, v0, v4

    const-string v1, "NORMAL"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 491
    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    .line 179
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mCheckSafeMediaType:I

    .line 180
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mHeadsetOrHeadphoneOn:Z

    .line 202
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 207
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 217
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 220
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 235
    const/16 v2, 0x9

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 249
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 273
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 288
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    .line 305
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "STREAM_VOICE_CALL"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "STREAM_SYSTEM"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "STREAM_RING"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "STREAM_MUSIC"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "STREAM_ALARM"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "STREAM_NOTIFICATION"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "STREAM_BLUETOOTH_SCO"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "STREAM_SYSTEM_ENFORCED"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "STREAM_DTMF"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "STREAM_TTS"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "STREAM_FM"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "STREAM_MATV"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 320
    new-instance v2, Landroid/media/AudioService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 373
    new-instance v2, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mIsRinging:Z

    .line 379
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 431
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 445
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 446
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 450
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 454
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 458
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 461
    new-instance v2, Landroid/media/AudioRoutesInfo;

    invoke-direct {v2}, Landroid/media/AudioRoutesInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 462
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 472
    const/16 v2, 0x7c00

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 479
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    .line 484
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mDockState:I

    .line 2339
    new-instance v2, Landroid/media/AudioService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 4013
    const/16 v2, 0x7f8c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 4436
    new-instance v2, Landroid/media/AudioService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4550
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 4922
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mVoiceEventLock:Ljava/lang/Object;

    .line 5083
    new-instance v2, Landroid/media/AudioService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/media/AudioService$4;-><init>(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 5098
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    .line 5104
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5118
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5263
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 5269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 5821
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5822
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 6389
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I

    .line 6390
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_DISABLED:I

    .line 6391
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_INACTIVE:I

    .line 6392
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_ACTIVE:I

    .line 6395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mMcc:I

    .line 6399
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mSafeMediaVolumeDevices:I

    .line 492
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #bool@config_voice_capable#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 497
    const-string v2, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 498
    const-string/jumbo v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 499
    .local v15, pm:Landroid/os/PowerManager;
    const-string v2, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 500
    const/4 v2, 0x1

    const-string v3, "handleMediaEvent"

    invoke-virtual {v15, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 502
    const-string/jumbo v2, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Vibrator;

    .line 503
    .local v23, vibrator:Landroid/os/Vibrator;
    if-nez v23, :cond_4

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x0

    const-string/jumbo v4, "ro.config.vc_call_vol_steps"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #integer@config_soundEffectVolumeDb#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    .line 513
    new-instance v2, Landroid/view/VolumePanel;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 514
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mMode:I

    .line 515
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 517
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #bool@config_camera_sound_forced#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 523
    .local v10, cameraSoundForced:Z
    :try_start_0
    const-class v2, Lcom/mediatek/common/media/IAudioServiceExt;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/common/media/IAudioServiceExt;

    .line 525
    .local v9, cameraExt:Lcom/mediatek/common/media/IAudioServiceExt;
    if-eqz v9, :cond_0

    .line 526
    invoke-interface {v9}, Lcom/mediatek/common/media/IAudioServiceExt;->isCameraSoundForced()Z

    move-result v10

    .line 527
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plugin cameraSoundForced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v9           #cameraExt:Lcom/mediatek/common/media/IAudioServiceExt;
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0x9

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v10, :cond_5

    const/16 v6, 0xb

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 543
    new-instance v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_safe_volume_state"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #integer@config_safe_media_volume_index#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v17, v2, 0xa

    .line 553
    .local v17, safeMusicVolumeIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20b000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v16, v2, 0xa

    .line 556
    .local v16, safeFmVolumeIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 567
    new-instance v2, Landroid/media/AudioService$SettingsObserver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 568
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 569
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 571
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 575
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 581
    new-instance v12, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v12, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 583
    .local v12, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string v2, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    const-string/jumbo v2, "ro.audio.monitorOrientation"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mMonitorOrientation:Z

    .line 601
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v2, :cond_1

    .line 602
    const-string v2, "AudioService"

    const-string/jumbo v3, "monitoring device orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 607
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 610
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 611
    .local v14, pkgFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string/jumbo v2, "package"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 623
    :try_start_1
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 624
    .local v18, t:Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 625
    .local v13, notifyNow:Ljava/lang/Boolean;
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v19

    .line 626
    .local v19, tr:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v2, "AudioService"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 627
    const-string/jumbo v2, "telephony.registry2"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v20

    .line 628
    .local v20, tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v2, "AudioService"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 629
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 630
    const-string/jumbo v2, "telephony.registry3"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v21

    .line 632
    .local v21, tr3:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v2, "AudioService"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 634
    .end local v21           #tr3:Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_2
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    .line 635
    const-string/jumbo v2, "telephony.registry4"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v22

    .line 637
    .local v22, tr4:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v2, "AudioService"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 646
    .end local v13           #notifyNow:Ljava/lang/Boolean;
    .end local v18           #t:Lcom/android/internal/telephony/ITelephony;
    .end local v19           #tr:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v20           #tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v22           #tr4:Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_3
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #bool@config_useMasterVolume#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 648
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #array@config_masterVolumeRamp#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 653
    new-instance v2, Landroid/media/AudioService$RemotePlaybackState;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v5, 0x3

    aget v5, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v6, 0x3

    aget v6, v3, v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioService$RemotePlaybackState;-><init>(Landroid/media/AudioService;IIILandroid/media/AudioService$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    .line 655
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    .line 656
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 657
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    .line 664
    return-void

    .line 503
    .end local v10           #cameraSoundForced:Z
    .end local v12           #intentFilter:Landroid/content/IntentFilter;
    .end local v14           #pkgFilter:Landroid/content/IntentFilter;
    .end local v16           #safeFmVolumeIndex:I
    .end local v17           #safeMusicVolumeIndex:I
    :cond_4
    invoke-virtual/range {v23 .. v23}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    goto/16 :goto_0

    .line 529
    .restart local v10       #cameraSoundForced:Z
    :catch_0
    move-exception v11

    .line 530
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "AudioService"

    const-string v3, "createInstance IAudioServiceExt fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 534
    .end local v11           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 624
    .restart local v12       #intentFilter:Landroid/content/IntentFilter;
    .restart local v14       #pkgFilter:Landroid/content/IntentFilter;
    .restart local v16       #safeFmVolumeIndex:I
    .restart local v17       #safeMusicVolumeIndex:I
    .restart local v18       #t:Lcom/android/internal/telephony/ITelephony;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 639
    .end local v18           #t:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v11

    .line 640
    .local v11, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    const-string v3, "Fail to listen GEMINI state"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 641
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v11

    .line 642
    .local v11, e:Ljava/lang/NullPointerException;
    const-string v2, "AudioService"

    const-string v3, "The registry is null"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 235
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 249
    :array_9
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 273
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 288
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$10002(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;)Landroid/media/IRemoteControlDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p1
.end method

.method static synthetic access$1002(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1402(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 109
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2402(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/AudioService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4500()I
    .locals 1

    .prologue
    .line 109
    sget v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$4700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$5100(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$5300(Landroid/media/AudioService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$5400(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    return v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$5700(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    return v0
.end method

.method static synthetic access$6100(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$6200(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$6300(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$6400(Landroid/media/AudioService;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$6800(Landroid/media/AudioService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onNewPlaybackInfoForRcc(III)V

    return-void
.end method

.method static synthetic access$6900(Landroid/media/AudioService;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/media/AudioService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetRsxConnectionState(II)V

    return-void
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->onCheckMusicActive()V

    return-void
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->onCheckFmActive()V

    return-void
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$7400(Landroid/media/AudioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onConfigureSafeVolume(Z)V

    return-void
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$7502(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$7600(Landroid/media/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Landroid/media/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$7702(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Landroid/media/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$7800(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Landroid/media/AudioService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$8102(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$8200(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8302(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method static synthetic access$8400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$8500(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->discardAudioFocusOwner()V

    return-void
.end method

.method static synthetic access$8800(Landroid/media/AudioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$8900(Landroid/media/AudioService;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$8902(Landroid/media/AudioService;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->enforceSafeMediaVolume(I)V

    return-void
.end method

.method static synthetic access$902(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$9100(Landroid/media/AudioService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$9200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9302(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$9400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9500(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    return-void
.end method

.method static synthetic access$9704()I
    .locals 1

    .prologue
    .line 109
    sget v0, Landroid/media/AudioService;->sLastRccId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/AudioService;->sLastRccId:I

    return v0
.end method

.method static synthetic access$9900(Landroid/media/AudioService;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method private adjustRemoteVolume(III)V
    .locals 5
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 6102
    const/4 v0, -0x1

    .line 6103
    .local v0, rccId:I
    const/4 v1, 0x0

    .line 6104
    .local v1, volFixed:Z
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3

    .line 6105
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    if-nez v2, :cond_0

    .line 6106
    const-string v2, "AudioService"

    const-string v4, "adjustRemoteVolume didn\'t find an active client"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6107
    monitor-exit v3

    .line 6122
    :goto_0
    return-void

    .line 6109
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 6110
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 6112
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6116
    if-nez v1, :cond_1

    .line 6117
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->sendVolumeUpdateToRemote(II)V

    .line 6121
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2, p1, p3}, Landroid/view/VolumePanel;->postRemoteVolumeChanged(II)V

    goto :goto_0

    .line 6110
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 6112
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .parameter "muted"

    .prologue
    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1244
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1246
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1247
    return-void
.end method

.method private broadcastRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    .line 2829
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2830
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2831
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2833
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2834
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2329
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 2330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2331
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2332
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2334
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2335
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 2337
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .parameter "vibrateType"

    .prologue
    .line 2838
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2839
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2840
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2841
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2842
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 2844
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 2

    .prologue
    .line 4648
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4649
    const/4 v0, 0x0

    .line 4651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 3919
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 3920
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 5

    .prologue
    .line 687
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 688
    .local v0, numStreamTypes:I
    const/4 v1, 0x0

    .local v1, streamType:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 689
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 690
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 693
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 698
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-nez v2, :cond_1

    .line 699
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 688
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :cond_2
    return-void
.end method

.method private checkForRingerModeChange(III)Z
    .locals 5
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "step"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2616
    const/4 v0, 0x1

    .line 2617
    .local v0, adjustVolumeIndex:Z
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 2619
    .local v1, ringerMode:I
    packed-switch v1, :pswitch_data_0

    .line 2665
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 2671
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 2673
    return v0

    .line 2621
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 2622
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_1

    .line 2628
    if-gt p3, p1, :cond_0

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_0

    .line 2629
    const/4 v1, 0x1

    goto :goto_0

    .line 2633
    :cond_1
    if-ge p1, p3, :cond_0

    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_0

    .line 2634
    const/4 v1, 0x0

    goto :goto_0

    .line 2640
    :pswitch_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_2

    .line 2641
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2645
    :cond_2
    if-ne p2, v3, :cond_4

    .line 2646
    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_3

    .line 2647
    const/4 v1, 0x0

    .line 2652
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 2653
    goto :goto_0

    .line 2649
    :cond_4
    if-ne p2, v4, :cond_3

    .line 2650
    const/4 v1, 0x2

    goto :goto_1

    .line 2655
    :pswitch_2
    if-ne p2, v4, :cond_5

    .line 2656
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_6

    .line 2657
    const/4 v1, 0x1

    .line 2662
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 2663
    goto :goto_0

    .line 2659
    :cond_6
    const/4 v1, 0x2

    goto :goto_2

    .line 2619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkRingStreamVolumes()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4178
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4179
    .local v0, numStreamTypes:I
    const/4 v1, 0x0

    .local v1, streamType:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4180
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-ne v4, v2, :cond_0

    if-eq v1, v4, :cond_0

    .line 4182
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioService$VolumeStreamState;->applyRingIndexes(Z)V

    .line 4183
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioService$VolumeStreamState;->applyRingIndexes(Z)V

    .line 4185
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-nez v2, :cond_0

    .line 4186
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4190
    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 6
    .parameter "streamType"
    .parameter "index"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x3

    .line 6536
    iget-object v2, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v2

    .line 6538
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    if-ne v0, v4, :cond_0

    and-int/lit8 v0, p3, 0xc

    if-eqz v0, :cond_0

    .line 6540
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 6542
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioService;->mCheckSafeMediaType:I

    .line 6543
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->postDisplaySafeVolumeWarning()V

    .line 6544
    monitor-exit v2

    move v0, v1

    .line 6557
    :goto_0
    return v0

    .line 6548
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    if-ne v0, v5, :cond_1

    and-int/lit8 v0, p3, 0xc

    if-eqz v0, :cond_1

    .line 6550
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 6552
    const/16 v0, 0xa

    iput v0, p0, Landroid/media/AudioService;->mCheckSafeMediaType:I

    .line 6553
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->postDisplaySafeVolumeWarning()V

    .line 6554
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 6557
    :cond_1
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 6558
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 2237
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 2241
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2243
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 11
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 4021
    const/4 v7, 0x0

    .line 4022
    .local v7, delay:I
    if-nez p2, :cond_2

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 4023
    const/4 v9, 0x0

    .line 4024
    .local v9, devices:I
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4025
    .local v8, dev:I
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_0

    .line 4026
    or-int/2addr v9, v8

    goto :goto_0

    .line 4029
    .end local v8           #dev:I
    :cond_1
    if-ne v9, p1, :cond_2

    .line 4030
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x19

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4037
    const/16 v7, 0x3e8

    .line 4041
    .end local v9           #devices:I
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4043
    :cond_3
    const/16 v7, 0x3e8

    .line 4045
    :cond_4
    return v7
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .locals 7
    .parameter "infoChangedFlags"

    .prologue
    .line 5603
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5604
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 5653
    :goto_0
    return-void

    .line 5616
    :cond_1
    const/4 v0, 0x0

    .line 5618
    .local v0, af:Landroid/media/AudioService$FocusStackEntry;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, index:I
    :goto_1
    if-ltz v3, :cond_3

    .line 5619
    iget-object v4, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    .line 5620
    .local v2, fse:Landroid/media/AudioService$FocusStackEntry;
    iget v4, v2, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget v4, v2, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 5622
    :cond_2
    move-object v0, v2

    .line 5630
    .end local v2           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v3           #index:I
    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 5631
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 5618
    .restart local v2       #fse:Landroid/media/AudioService$FocusStackEntry;
    .restart local v3       #index:I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 5626
    .end local v2           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v3           #index:I
    :catch_0
    move-exception v1

    .line 5627
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong index accessing audio focus stack when updating RCD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    const/4 v0, 0x0

    goto :goto_2

    .line 5636
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v4, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v4, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 5640
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 5645
    :cond_6
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$RemoteControlStackEntry;

    iget v4, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    iget v5, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    if-eq v4, v5, :cond_7

    .line 5646
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 5652
    :cond_7
    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_0
.end method

.method private checkUpdateRemoteStateIfActive(I)Z
    .locals 7
    .parameter "streamType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6055
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 6056
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6057
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6058
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 6059
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    if-ne v5, v2, :cond_0

    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-static {v5}, Landroid/media/AudioService;->isPlaystateActive(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    if-ne v5, p1, :cond_0

    .line 6064
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6065
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 6066
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 6067
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 6068
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 6069
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 6070
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6071
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6078
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :goto_0
    return v2

    .line 6070
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 6074
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6075
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4

    .line 6076
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 6077
    monitor-exit v4

    move v2, v3

    .line 6078
    goto :goto_0

    .line 6077
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .locals 3

    .prologue
    .line 5555
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5556
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5557
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5559
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5560
    return-void

    .line 5557
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 667
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 668
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 669
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 670
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 705
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 706
    .local v1, numStreamTypes:I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 708
    .local v2, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 709
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 713
    return-void
.end method

.method private discardAudioFocusOwner()V
    .locals 6

    .prologue
    .line 4470
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4471
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v2, :cond_0

    .line 4473
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4475
    .local v1, focusOwner:Landroid/media/AudioService$FocusStackEntry;
    :try_start_1
    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v4, -0x1

    iget-object v5, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4481
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4483
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4484
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 4485
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4487
    .end local v1           #focusOwner:Landroid/media/AudioService$FocusStackEntry;
    :cond_0
    :try_start_4
    monitor-exit v3

    .line 4488
    return-void

    .line 4477
    .restart local v1       #focusOwner:Landroid/media/AudioService$FocusStackEntry;
    :catch_0
    move-exception v0

    .line 4478
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure to signal loss of audio focus due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4487
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #focusOwner:Landroid/media/AudioService$FocusStackEntry;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 4485
    .restart local v1       #focusOwner:Landroid/media/AudioService$FocusStackEntry;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .parameter "exceptPid"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2298
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2299
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 2300
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 2302
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 2303
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 2304
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2306
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2317
    :cond_1
    :goto_0
    monitor-exit v7

    .line 2318
    return-void

    .line 2309
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2311
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 2317
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2315
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 25
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 4846
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 4847
    .local v18, identToken:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v23

    .line 4848
    .local v23, userId:I
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4850
    if-eqz p2, :cond_0

    .line 4851
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4853
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4854
    .local v4, keyIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 4856
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    .line 4859
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    move/from16 v0, v23

    if-ne v1, v0, :cond_2

    .line 4860
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/16 v3, 0x7bc

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4912
    :goto_1
    :try_start_2
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4913
    return-void

    .line 4860
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 4864
    :cond_2
    const/16 v20, 0x0

    .line 4865
    .local v20, peakRcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 4866
    .local v22, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4867
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4868
    .local v21, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    move-object/from16 v0, v21

    iget-object v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 4869
    .local v12, ID:I
    move/from16 v0, v23

    if-ne v12, v0, :cond_3

    .line 4870
    move-object/from16 v20, v21

    goto :goto_2

    .line 4874
    .end local v12           #ID:I
    .end local v21           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_4
    if-eqz v20, :cond_6

    .line 4875
    move-object/from16 v0, v20

    iget-object v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    const/16 v3, 0x7bc

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 4893
    .end local v20           #peakRcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v22           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catch_0
    move-exception v13

    .line 4894
    .local v13, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_4
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending pending intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    invoke-virtual {v13}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 4912
    .end local v13           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v1

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 4875
    .restart local v20       #peakRcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v22       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 4879
    :cond_6
    if-eqz p2, :cond_7

    .line 4880
    :try_start_5
    const-string v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4883
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v16

    .line 4885
    .local v16, identTemp:J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4889
    :try_start_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_7} :catch_0

    .line 4900
    .end local v16           #identTemp:J
    .end local v20           #peakRcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v22           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_8
    if-eqz p2, :cond_9

    .line 4901
    :try_start_8
    const-string v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4903
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v14

    .line 4905
    .local v14, ident:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 4909
    :try_start_a
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 11
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/4 v2, 0x0

    .line 4822
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4823
    .local v1, keyIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4824
    iget-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4825
    if-eqz p2, :cond_0

    .line 4826
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4827
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4829
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4831
    .local v9, ident:J
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4834
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4836
    return-void

    .line 4834
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private doSetMasterVolume(FI)V
    .locals 9
    .parameter "volume"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 1366
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1367
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 1368
    .local v8, oldVolume:I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1370
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 1371
    .local v7, newVolume:I
    if-eq v7, v8, :cond_0

    .line 1373
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1377
    :cond_0
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 1379
    .end local v7           #newVolume:I
    .end local v8           #oldVolume:I
    :cond_1
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 4557
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4558
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4559
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4560
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4561
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4562
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- stream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4569
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4570
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 5298
    const-string v2, "\nRemote Control Client stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5299
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5300
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5301
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5303
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volMax: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volObs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5313
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5314
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3

    .line 5315
    :try_start_2
    const-string v2, "\nRemote Volume State:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  has remote: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  is remote active: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  rccId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_1

    const-string v2, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume steps: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5324
    monitor-exit v3

    .line 5325
    return-void

    .line 5319
    :cond_1
    const-string v2, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_1

    .line 5324
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 5276
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5277
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5278
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5279
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5281
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5289
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5290
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 6606
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6608
    const-string v0, "- ringer mode affected streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6609
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6610
    const-string v0, "- ringer mode muted streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6611
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6612
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 716
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 718
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 721
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_0
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    iget v2, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method private enforceSafeMediaVolume()V
    .locals 19

    .prologue
    .line 6469
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v6, v1, v2

    .line 6470
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v18, 0x1

    .line 6471
    .local v18, lastAudible:Z
    :goto_0
    const/16 v14, 0xc

    .line 6472
    .local v14, devices:I
    const/4 v15, 0x0

    .local v15, i:I
    move/from16 v16, v15

    .line 6474
    .end local v15           #i:I
    .local v16, i:I
    :goto_1
    if-eqz v14, :cond_4

    .line 6475
    const/4 v1, 0x1

    add-int/lit8 v15, v16, 0x1

    .end local v16           #i:I
    .restart local v15       #i:I
    shl-int v5, v1, v16

    .line 6476
    .local v5, device:I
    and-int v1, v5, v14

    if-nez v1, :cond_1

    move/from16 v16, v15

    .line 6477
    .end local v15           #i:I
    .restart local v16       #i:I
    goto :goto_1

    .line 6470
    .end local v5           #device:I
    .end local v14           #devices:I
    .end local v16           #i:I
    .end local v18           #lastAudible:Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 6479
    .restart local v5       #device:I
    .restart local v14       #devices:I
    .restart local v15       #i:I
    .restart local v18       #lastAudible:Z
    :cond_1
    move/from16 v0, v18

    invoke-virtual {v6, v5, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v17

    .line 6480
    .local v17, index:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v0, v17

    if-le v0, v1, :cond_2

    .line 6481
    if-eqz v18, :cond_3

    .line 6482
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v6, v1, v5}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 6483
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v7, 0x1f4

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6501
    :cond_2
    :goto_2
    xor-int/lit8 v1, v5, -0x1

    and-int/2addr v14, v1

    move/from16 v16, v15

    .line 6502
    .end local v15           #i:I
    .restart local v16       #i:I
    goto :goto_1

    .line 6491
    .end local v16           #i:I
    .restart local v15       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    .line 6492
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v13, 0x0

    move v10, v5

    move-object v12, v6

    invoke-static/range {v7 .. v13}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2

    .line 6503
    .end local v5           #device:I
    .end local v15           #i:I
    .end local v17           #index:I
    .restart local v16       #i:I
    :cond_4
    return-void
.end method

.method private enforceSafeMediaVolume(I)V
    .locals 21
    .parameter "streamType"

    .prologue
    .line 6507
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v2, p1

    .line 6508
    .local v7, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v7}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v19, 0x1

    .line 6509
    .local v19, lastAudible:Z
    :goto_0
    const/16 v15, 0xc

    .line 6510
    .local v15, devices:I
    const/16 v16, 0x0

    .local v16, i:I
    move/from16 v17, v16

    .line 6512
    .end local v16           #i:I
    .local v17, i:I
    :goto_1
    if-eqz v15, :cond_4

    .line 6513
    const/4 v2, 0x1

    add-int/lit8 v16, v17, 0x1

    .end local v17           #i:I
    .restart local v16       #i:I
    shl-int v6, v2, v17

    .line 6514
    .local v6, device:I
    and-int v2, v6, v15

    if-nez v2, :cond_1

    move/from16 v17, v16

    .line 6515
    .end local v16           #i:I
    .restart local v17       #i:I
    goto :goto_1

    .line 6508
    .end local v6           #device:I
    .end local v15           #devices:I
    .end local v17           #i:I
    .end local v19           #lastAudible:Z
    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    .line 6517
    .restart local v6       #device:I
    .restart local v15       #devices:I
    .restart local v16       #i:I
    .restart local v19       #lastAudible:Z
    :cond_1
    move/from16 v0, v19

    invoke-virtual {v7, v6, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v18

    .line 6518
    .local v18, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 6519
    .local v20, safeMediaVolumeIndex:I
    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 6520
    if-eqz v19, :cond_3

    .line 6521
    move/from16 v0, v20

    invoke-virtual {v7, v0, v6}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 6522
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6530
    :cond_2
    :goto_2
    xor-int/lit8 v2, v6, -0x1

    and-int/2addr v15, v2

    move/from16 v17, v16

    .line 6531
    .end local v16           #i:I
    .restart local v17       #i:I
    goto :goto_1

    .line 6525
    .end local v17           #i:I
    .restart local v16       #i:I
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0, v6, v2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    .line 6526
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v11, v6

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2

    .line 6532
    .end local v6           #device:I
    .end local v16           #i:I
    .end local v18           #index:I
    .end local v20           #safeMediaVolumeIndex:I
    .restart local v17       #i:I
    :cond_4
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 2689
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 2690
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2692
    :cond_1
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .parameter "ringerMode"

    .prologue
    .line 1420
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :cond_0
    return-void
.end method

.method private ensureValidSteps(I)V
    .locals 3
    .parameter "steps"

    .prologue
    .line 2695
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 2696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2698
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 2701
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2702
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2704
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 4792
    invoke-static {p1}, Landroid/media/AudioService;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4793
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    :goto_0
    return-void

    .line 4797
    :cond_0
    sget-object v1, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4798
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4799
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4801
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 4802
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 4805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4804
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4805
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4807
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioService;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4808
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 4804
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4810
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/4 v2, 0x1

    .line 4938
    const/4 v1, 0x1

    .line 4939
    .local v1, voiceButtonAction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4940
    .local v0, keyAction:I
    iget-object v3, p0, Landroid/media/AudioService;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4941
    if-nez v0, :cond_2

    .line 4942
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 4944
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    .line 4945
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    .line 4961
    :cond_0
    :goto_0
    monitor-exit v3

    .line 4964
    packed-switch v1, :pswitch_data_0

    .line 4978
    :goto_1
    :pswitch_0
    return-void

    .line 4946
    :cond_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 4949
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    .line 4950
    const/4 v1, 0x2

    goto :goto_0

    .line 4952
    :cond_2
    if-ne v0, v2, :cond_0

    .line 4953
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    .line 4955
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    .line 4956
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4957
    const/4 v1, 0x3

    goto :goto_0

    .line 4961
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4971
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/media/AudioService;->startVoiceBasedInteractions(Z)V

    goto :goto_1

    .line 4975
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 4964
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findVolumeDelta(II)I
    .locals 6
    .parameter "direction"
    .parameter "volume"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1147
    const/4 v0, 0x0

    .line 1148
    .local v0, delta:I
    if-ne p1, v5, :cond_4

    .line 1149
    const/16 v4, 0x64

    if-ne p2, v4, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return v3

    .line 1153
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 1156
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-le v1, v5, :cond_2

    .line 1157
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_3

    .line 1158
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1           #i:I
    :cond_2
    :goto_2
    move v3, v0

    .line 1178
    goto :goto_0

    .line 1156
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 1162
    .end local v1           #i:I
    :cond_4
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 1163
    if-eqz p2, :cond_0

    .line 1166
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 1168
    .local v2, length:I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1171
    const/4 v1, 0x2

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 1172
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_5

    .line 1173
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1174
    goto :goto_2

    .line 1171
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method private getActiveStreamType(I)I
    .locals 6
    .parameter "suggestedStreamType"

    .prologue
    const/high16 v5, -0x8000

    const/16 v4, 0x1388

    const/16 v2, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 2721
    iget-boolean v3, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v3, :cond_8

    .line 2722
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2723
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 2726
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    const/4 p1, 0x6

    .line 2822
    .end local p1
    :goto_0
    return p1

    .line 2730
    .restart local p1
    :cond_0
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 2731
    goto :goto_0

    .line 2733
    :cond_1
    if-ne p1, v5, :cond_5

    .line 2736
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2738
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_REMOTE_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    const/16 p1, -0xc8

    goto :goto_0

    .line 2740
    :cond_2
    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2743
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 2744
    goto :goto_0

    .line 2746
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2748
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_FM..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 2749
    goto :goto_0

    .line 2753
    :cond_4
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    const/4 p1, 0x2

    goto :goto_0

    .line 2756
    :cond_5
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2758
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 2759
    goto :goto_0

    .line 2761
    :cond_6
    invoke-virtual {p0}, Landroid/media/AudioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2763
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_FM..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 2764
    goto :goto_0

    .line 2767
    :cond_7
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2772
    :cond_8
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2773
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 2775
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    const/4 p1, 0x6

    goto/16 :goto_0

    .line 2778
    :cond_9
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 2779
    goto/16 :goto_0

    .line 2781
    :cond_a
    const/4 v3, 0x5

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x2

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2785
    :cond_b
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    const/4 p1, 0x5

    goto/16 :goto_0

    .line 2787
    :cond_c
    if-ne p1, v5, :cond_10

    .line 2788
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2791
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_REMOTE_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const/16 p1, -0xc8

    goto/16 :goto_0

    .line 2793
    :cond_d
    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2796
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 2797
    goto/16 :goto_0

    .line 2799
    :cond_e
    invoke-virtual {p0}, Landroid/media/AudioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2801
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_FM..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 2802
    goto/16 :goto_0

    .line 2806
    :cond_f
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: using STREAM_MUSIC as default"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 2807
    goto/16 :goto_0

    .line 2810
    :cond_10
    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2812
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 2813
    goto/16 :goto_0

    .line 2815
    :cond_11
    invoke-virtual {p0}, Landroid/media/AudioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2816
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_FM..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 2817
    goto/16 :goto_0

    .line 2820
    :cond_12
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2282
    const/4 v8, 0x0

    .line 2283
    .local v8, result:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 2284
    .local v7, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 2285
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 2292
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2294
    return v8

    :cond_1
    move v6, v2

    .line 2292
    goto :goto_0
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .parameter "stream"

    .prologue
    .line 2883
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 2884
    .local v0, device:I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 2890
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2891
    const/4 v0, 0x2

    .line 2896
    :cond_0
    :goto_0
    return v0

    .line 2893
    :cond_1
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .parameter "cb"
    .parameter "create"

    .prologue
    .line 2246
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2247
    const/4 v0, 0x0

    .line 2248
    .local v0, client:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2249
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2250
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2251
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 2252
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 2258
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 2249
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 2254
    :cond_1
    if-eqz p2, :cond_2

    .line 2255
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2256
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 2259
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .end local v2           #i:I
    .end local v3           #size:I
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1549
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 1552
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 1554
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    .line 6242
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 6243
    .local v9, config:Landroid/content/res/Configuration;
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_0

    .line 6244
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 6245
    .local v11, newOrientation:I
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v11, v0, :cond_0

    .line 6246
    iput v11, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 6247
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 6250
    .end local v11           #newOrientation:I
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6258
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_camera_sound_forced#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 6262
    .local v8, cameraSoundForced:Z
    :try_start_1
    const-class v0, Lcom/mediatek/common/media/IAudioServiceExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/media/IAudioServiceExt;

    .line 6264
    .local v7, cameraExt:Lcom/mediatek/common/media/IAudioServiceExt;
    if-eqz v7, :cond_1

    .line 6265
    invoke-interface {v7}, Lcom/mediatek/common/media/IAudioServiceExt;->isCameraSoundForced()Z

    move-result v8

    .line 6266
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigurationChanged() plugin cameraSoundForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6273
    .end local v7           #cameraExt:Lcom/mediatek/common/media/IAudioServiceExt;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v13, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6274
    :try_start_3
    iget-object v14, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6275
    :try_start_4
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v8, v0, :cond_2

    .line 6276
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 6278
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    .line 6279
    .local v12, s:Landroid/media/AudioService$VolumeStreamState;
    if-eqz v8, :cond_3

    .line 6280
    invoke-virtual {v12}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 6281
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 6292
    :goto_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 6294
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v8, :cond_4

    const/16 v4, 0xb

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6303
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6310
    .end local v12           #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_2
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6311
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6312
    :try_start_6
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/VolumePanel;->setLayoutDirection(I)V

    .line 6316
    .end local v8           #cameraSoundForced:Z
    .end local v9           #config:Landroid/content/res/Configuration;
    :goto_3
    return-void

    .line 6269
    .restart local v8       #cameraSoundForced:Z
    .restart local v9       #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    .line 6270
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "handleConfigurationChanged() createInstance IAudioServiceExt fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 6313
    .end local v8           #cameraSoundForced:Z
    .end local v9           #config:Landroid/content/res/Configuration;
    .end local v10           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 6314
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving device orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6284
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v8       #cameraSoundForced:Z
    .restart local v9       #config:Landroid/content/res/Configuration;
    .restart local v12       #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_3
    :try_start_7
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 6286
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 6288
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 6310
    .end local v12           #s:Landroid/media/AudioService$VolumeStreamState;
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 6311
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 6294
    .restart local v12       #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .locals 7
    .parameter "connected"
    .parameter "device"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3987
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v4

    .line 3988
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 3990
    .local v0, isConnected:Z
    :goto_0
    const-string v1, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDeviceConnection:isConnected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 3993
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v3, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3996
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDeviceConnection remove:connected:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",device:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3998
    monitor-exit v4

    move v1, v2

    .line 4008
    :goto_1
    return v1

    .end local v0           #isConnected:Z
    :cond_1
    move v0, v3

    .line 3988
    goto :goto_0

    .line 3999
    .restart local v0       #isConnected:Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 4000
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4003
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDeviceConnection connect:connected:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",device:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4005
    monitor-exit v4

    move v1, v2

    goto :goto_1

    .line 4007
    :cond_3
    monitor-exit v4

    move v1, v3

    .line 4008
    goto :goto_1

    .line 4007
    .end local v0           #isConnected:Z
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 3924
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "pi"

    .prologue
    .line 5437
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5438
    const/4 v0, 0x1

    .line 5440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 5

    .prologue
    .line 2707
    const/4 v1, 0x0

    .line 2709
    .local v1, isOffhook:Z
    iget-boolean v3, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v3, :cond_0

    .line 2711
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2712
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2717
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 2713
    :catch_0
    move-exception v0

    .line 2714
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v4, "Couldn\'t connect to phone service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2717
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static isPlaystateActive(I)Z
    .locals 1
    .parameter "playState"

    .prologue
    .line 6088
    packed-switch p0, :pswitch_data_0

    .line 6097
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6095
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 6088
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2681
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x0

    .line 4992
    if-nez p0, :cond_0

    .line 5014
    :goto_0
    return v1

    .line 4995
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4996
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 5014
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 4996
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 5024
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    .line 5025
    const/4 v0, 0x1

    .line 5027
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    const/4 v0, 0x1

    .line 3882
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 3883
    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3887
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3888
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 3908
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3910
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3912
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3913
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3915
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    const/16 v1, 0x80

    .line 3898
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3901
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3902
    return-void
.end method

.method private notifyRingerModeChanged()V
    .locals 7

    .prologue
    .line 6910
    iget-object v3, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6911
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyRingerModeChanged: New ringermode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6912
    iget-object v4, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6913
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6914
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6915
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$Record;

    .line 6916
    .local v2, record:Landroid/media/AudioService$Record;
    iget v3, v2, Landroid/media/AudioService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 6918
    :try_start_1
    iget-object v3, v2, Landroid/media/AudioService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget v5, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-interface {v3, v5}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onRingerModeChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6919
    :catch_0
    move-exception v0

    .line 6920
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 6921
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyRingerModeChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6928
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    .end local v2           #record:Landroid/media/AudioService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6933
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :goto_1
    return-void

    .line 6930
    :cond_2
    const-string v3, "AudioService"

    const-string/jumbo v4, "notifyRingerModeChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 6939
    iget-object v3, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6940
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyRingerVolumeChanged: oldVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    iget-object v4, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6943
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6944
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6945
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$Record;

    .line 6946
    .local v2, record:Landroid/media/AudioService$Record;
    iget v3, v2, Landroid/media/AudioService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 6948
    :try_start_1
    iget-object v3, v2, Landroid/media/AudioService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6949
    :catch_0
    move-exception v0

    .line 6950
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 6951
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyRingerVolumeChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6958
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    .end local v2           #record:Landroid/media/AudioService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6963
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :goto_1
    return-void

    .line 6960
    :cond_2
    const-string v3, "AudioService"

    const-string/jumbo v4, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 4

    .prologue
    .line 4492
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 4493
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4495
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 4497
    const-string v2, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyTopOfAudioFocusStack: clientId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4504
    :cond_0
    :goto_0
    return-void

    .line 4498
    :catch_0
    move-exception v0

    .line 4499
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyVibrateSettingChanged(I)V
    .locals 7
    .parameter "vibrateType"

    .prologue
    .line 6969
    iget-object v3, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6970
    iget-object v4, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6971
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6972
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6973
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$Record;

    .line 6974
    .local v2, record:Landroid/media/AudioService$Record;
    iget v3, v2, Landroid/media/AudioService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    .line 6976
    :try_start_1
    iget-object v3, v2, Landroid/media/AudioService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v5

    invoke-interface {v3, p1, v5}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onVibrateSettingChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6977
    :catch_0
    move-exception v0

    .line 6978
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 6979
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyVibrateSettingChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6986
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    .end local v2           #record:Landroid/media/AudioService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6990
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :goto_1
    return-void

    .line 6988
    :cond_2
    const-string v3, "AudioService"

    const-string/jumbo v4, "notifyVibrateSettingChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onCheckFmActive()V
    .locals 11

    .prologue
    const v10, 0xea60

    .line 2501
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 2502
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2503
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 2507
    .local v7, device:I
    iget-boolean v0, p0, Landroid/media/AudioService;->mHeadsetOrHeadphoneOn:Z

    if-eqz v0, :cond_0

    .line 2508
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x81

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2510
    and-int/lit8 v0, v7, 0xc

    if-eqz v0, :cond_0

    .line 2511
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v8

    .line 2513
    .local v8, index:I
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v8, v0, :cond_0

    .line 2516
    iget v0, p0, Landroid/media/AudioService;->mFmActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Landroid/media/AudioService;->mFmActiveMs:I

    .line 2517
    iget v0, p0, Landroid/media/AudioService;->mFmActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 2518
    const/16 v0, 0xa

    iput v0, p0, Landroid/media/AudioService;->mCheckSafeMediaType:I

    .line 2519
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 2520
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mFmActiveMs:I

    .line 2521
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->postDisplaySafeVolumeWarning()V

    .line 2527
    .end local v7           #device:I
    .end local v8           #index:I
    :cond_0
    monitor-exit v9

    .line 2528
    return-void

    .line 2527
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onCheckMusicActive()V
    .locals 13

    .prologue
    const v12, 0xea60

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2456
    iget-object v11, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v11

    .line 2457
    const/4 v7, 0x1

    .line 2459
    .local v7, condition:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v7, v0

    .line 2463
    :goto_0
    if-eqz v7, :cond_0

    .line 2464
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v8

    .line 2466
    .local v8, device:I
    and-int/lit8 v0, v8, 0xc

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2469
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v9

    .line 2473
    .local v9, index:I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2477
    .local v10, safeMusicVolumeIndex:I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-le v9, v10, :cond_0

    .line 2480
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v12

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 2481
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 2483
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioService;->mCheckSafeMediaType:I

    .line 2485
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 2486
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 2487
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->postDisplaySafeVolumeWarning()V

    .line 2492
    .end local v8           #device:I
    .end local v9           #index:I
    .end local v10           #safeMusicVolumeIndex:I
    :cond_0
    monitor-exit v11

    .line 2493
    return-void

    :cond_1
    move v7, v1

    .line 2459
    goto :goto_0

    .line 2492
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onConfigureSafeVolume(Z)V
    .locals 12
    .parameter "force"

    .prologue
    const/4 v4, 0x2

    .line 2533
    iget-object v11, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v11

    .line 2534
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 2535
    .local v7, mcc:I
    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 2538
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_safe_media_volume_index#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v10, v0, 0xa

    .line 2540
    .local v10, safeMusicVolumeIndex:I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v8, v0, 0xa

    .line 2543
    .local v8, safeFmVolumeIndex:I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndexs:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_safe_media_volume_enabled#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 2560
    .local v9, safeMediaVolumeEnabled:Z
    if-eqz v9, :cond_4

    .line 2561
    const/16 v3, 0xf

    .line 2563
    .local v3, persistedState:I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v4, :cond_1

    .line 2564
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 2565
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSafeMediaVolume(I)V

    .line 2568
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    if-eq v0, v4, :cond_2

    .line 2569
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 2570
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSafeMediaVolume(I)V

    .line 2594
    :cond_2
    :goto_0
    iput v7, p0, Landroid/media/AudioService;->mMcc:I

    .line 2595
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2603
    .end local v3           #persistedState:I
    .end local v8           #safeFmVolumeIndex:I
    .end local v9           #safeMediaVolumeEnabled:Z
    .end local v10           #safeMusicVolumeIndex:I
    :cond_3
    monitor-exit v11

    .line 2604
    return-void

    .line 2573
    .restart local v8       #safeFmVolumeIndex:I
    .restart local v9       #safeMediaVolumeEnabled:Z
    .restart local v10       #safeMusicVolumeIndex:I
    :cond_4
    const/4 v3, 0x5

    .line 2574
    .restart local v3       #persistedState:I
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_0

    .line 2603
    .end local v3           #persistedState:I
    .end local v7           #mcc:I
    .end local v8           #safeFmVolumeIndex:I
    .end local v9           #safeMediaVolumeEnabled:Z
    .end local v10           #safeMusicVolumeIndex:I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onNewPlaybackInfoForRcc(III)V
    .locals 6
    .parameter "rccId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 5970
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5971
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5972
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5973
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5974
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v2, p1, :cond_0

    .line 5975
    sparse-switch p2, :sswitch_data_0

    .line 6020
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unhandled key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for RCC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6023
    :goto_0
    monitor-exit v3

    .line 6027
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :goto_1
    return-void

    .line 5977
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :sswitch_0
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    .line 5978
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    goto :goto_0

    .line 6026
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5981
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :sswitch_1
    :try_start_1
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 5982
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5983
    :try_start_2
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_1

    .line 5984
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5985
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5987
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v2

    .line 5990
    :sswitch_2
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 5991
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5992
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_2

    .line 5993
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5994
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5996
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v2

    .line 5999
    :sswitch_3
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 6000
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6001
    :try_start_6
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_3

    .line 6002
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 6003
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 6005
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v2

    .line 6008
    :sswitch_4
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    goto :goto_0

    .line 6011
    :sswitch_5
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    .line 6012
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6013
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_4

    .line 6014
    invoke-static {p3}, Landroid/media/AudioService;->isPlaystateActive(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 6015
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    .line 6017
    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v2

    .line 6026
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_5
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 5975
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 5506
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5507
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5508
    :try_start_1
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5510
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 5512
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5513
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5514
    return-void

    .line 5512
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 5513
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 7
    .parameter "rcse"
    .parameter "flags"

    .prologue
    .line 5520
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 5521
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5522
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5525
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5528
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5534
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget v5, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    iget v6, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    invoke-interface {v1, v4, p2, v5, v6}, Landroid/media/IRemoteControlClient;->onInformationRequested(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5545
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5546
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5547
    return-void

    .line 5536
    :catch_0
    move-exception v0

    .line 5537
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5538
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 5545
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 5546
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 6

    .prologue
    .line 6209
    const-string v3, "AudioService"

    const-string/jumbo v4, "onReevaluateRemote()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6211
    const/4 v0, 0x0

    .line 6212
    .local v0, hasRemotePlayback:Z
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 6213
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6214
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 6216
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 6217
    const/4 v0, 0x1

    .line 6221
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6222
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4

    .line 6223
    :try_start_1
    iget-boolean v3, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    if-eq v3, v0, :cond_2

    .line 6224
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    .line 6225
    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v3, v0}, Landroid/view/VolumePanel;->postRemoteSliderVisibility(Z)V

    .line 6227
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6228
    return-void

    .line 6221
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 6227
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 4
    .parameter "rccId"
    .parameter "rvo"

    .prologue
    .line 6036
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 6037
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6038
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6039
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 6040
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v2, p1, :cond_0

    .line 6041
    iput-object p2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 6045
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    monitor-exit v3

    .line 6046
    return-void

    .line 6045
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    .prologue
    .line 3893
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3894
    return-void
.end method

.method private onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 12
    .parameter "btDevice"
    .parameter "state"

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3929
    if-nez p1, :cond_0

    .line 3984
    :goto_0
    return-void

    .line 3932
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 3933
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3934
    const-string v7, ""

    .line 3936
    :cond_1
    iget-object v10, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 3937
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3941
    .local v8, isConnected:Z
    :goto_1
    if-eqz v8, :cond_7

    if-eq p2, v3, :cond_7

    .line 3942
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3943
    if-nez p2, :cond_2

    .line 3947
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 3953
    :cond_2
    :goto_2
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3954
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 3955
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 3956
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3959
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3983
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .end local v8           #isConnected:Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v8, v1

    .line 3937
    goto :goto_1

    .line 3951
    .restart local v8       #isConnected:Z
    :cond_6
    :try_start_3
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3959
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 3960
    :cond_7
    if-nez v8, :cond_4

    if-ne p2, v3, :cond_4

    .line 3961
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3963
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3964
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 3973
    :cond_8
    :goto_4
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 3974
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3975
    :try_start_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 3976
    .local v9, name:Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3977
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 3978
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3981
    :cond_9
    monitor-exit v11

    goto :goto_3

    .end local v9           #name:Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 3968
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3969
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3970
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private onSetRsxConnectionState(II)V
    .locals 5
    .parameter "available"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2444
    const v3, -0x7fffff00

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2448
    const v0, 0x8000

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2452
    return-void

    :cond_0
    move v0, v2

    .line 2444
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2448
    goto :goto_1
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 12
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4111
    iget-object v11, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v11

    .line 4112
    :try_start_0
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetWiredDeviceConnectionState:device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    const/4 v10, 0x1

    .line 4117
    .local v10, shouldNotify:Z
    if-nez p2, :cond_2

    if-eq p1, v5, :cond_0

    if-ne p1, v6, :cond_2

    .line 4120
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mHeadsetOrHeadphoneOn:Z

    .line 4126
    if-ne p1, v6, :cond_8

    move v7, v0

    .line 4127
    .local v7, isHeadphoneOff:Z
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 4129
    .local v8, isHeadsetOn:Z
    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    .line 4130
    const/4 v10, 0x0

    .line 4131
    const-string v2, "AudioService"

    const-string/jumbo v3, "onSetWiredDeviceConnectionState() no need to setForceUse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    :cond_1
    if-eqz v10, :cond_2

    .line 4134
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4138
    .end local v7           #isHeadphoneOff:Z
    .end local v8           #isHeadsetOn:Z
    :cond_2
    and-int/lit16 v2, p1, 0x6000

    if-eqz v2, :cond_9

    move v9, v0

    .line 4139
    .local v9, isUsb:Z
    :goto_1
    if-ne p2, v0, :cond_3

    move v1, v0

    :cond_3
    if-eqz v9, :cond_a

    move-object v0, p3

    :goto_2
    invoke-direct {p0, v1, p1, v0}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 4140
    if-eqz p2, :cond_6

    .line 4141
    if-eq p1, v5, :cond_4

    if-ne p1, v6, :cond_5

    .line 4144
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioService;->mHeadsetOrHeadphoneOn:Z

    .line 4146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4148
    invoke-direct {p0}, Landroid/media/AudioService;->checkRingStreamVolumes()V

    .line 4151
    :cond_5
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_6

    .line 4152
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4161
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x81

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4167
    :cond_6
    if-nez v9, :cond_7

    .line 4168
    invoke-direct {p0, p1, p2, p3, v10}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Z)V

    .line 4173
    :cond_7
    monitor-exit v11

    .line 4174
    return-void

    .end local v9           #isUsb:Z
    :cond_8
    move v7, v1

    .line 4126
    goto :goto_0

    :cond_9
    move v9, v1

    .line 4138
    goto :goto_1

    .line 4139
    .restart local v9       #isUsb:Z
    :cond_a
    const-string v0, ""

    goto :goto_2

    .line 4173
    .end local v9           #isUsb:Z
    .end local v10           #shouldNotify:Z
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postReevaluateRemote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 6205
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6206
    return-void
.end method

.method private pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 7
    .parameter "mediaIntent"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 5391
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5413
    :goto_0
    return-void

    .line 5394
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5395
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    const/4 v0, 0x0

    .line 5396
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    const/4 v2, 0x0

    .line 5397
    .local v2, wasInsideStack:Z
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5399
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5400
    const/4 v2, 0x1

    .line 5401
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5405
    :cond_2
    if-nez v2, :cond_3

    .line 5406
    new-instance v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    invoke-direct {v0, p1, p2}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5408
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5411
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v6, v6, p2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 7
    .parameter "handler"
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2853
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2854
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2855
    return-void
.end method

.method private rcDisplay_startDeathMonitor_syncRcStack()V
    .locals 5

    .prologue
    .line 5863
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v2, :cond_0

    .line 5865
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5866
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioService$RcDisplayDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    .line 5868
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5875
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 5869
    .restart local v0       #b:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 5871
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5872
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private rcDisplay_stopDeathMonitor_syncRcStack()V
    .locals 1

    .prologue
    .line 5856
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_0

    .line 5858
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$RcDisplayDeathHandler;->unlinkToRcDisplayDeath()V

    .line 5860
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 9
    .parameter "userSwitch"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 1939
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1942
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1943
    .local v1, numStreamTypes:I
    const/4 v4, 0x0

    .local v4, streamType:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1944
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 1946
    .local v3, streamState:Landroid/media/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v4

    if-ne v5, v7, :cond_0

    .line 1943
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1950
    :cond_0
    monitor-enter v3

    .line 1951
    :try_start_0
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 1954
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1956
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1957
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_1

    .line 1958
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2002(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1959
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 1957
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1962
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1967
    .end local v3           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v8}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1969
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 1973
    iget-object v6, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 1975
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    if-ne v5, v7, :cond_3

    .line 1976
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Landroid/media/AudioService;->enforceSafeMediaVolume(I)V

    .line 1979
    :cond_3
    iget-object v5, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shr-int/lit8 v5, v5, 0x2

    if-ne v5, v7, :cond_4

    .line 1980
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Landroid/media/AudioService;->enforceSafeMediaVolume(I)V

    .line 1982
    :cond_4
    monitor-exit v6

    .line 1991
    return-void

    .line 1982
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .parameter "cr"

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 764
    const-string v1, "dock_audio_media_enabled"

    invoke-static {p1, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 767
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1

    .line 768
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 773
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    :goto_2
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 781
    return-void

    :cond_0
    move v0, v6

    .line 764
    goto :goto_0

    .line 770
    :cond_1
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_1

    :cond_2
    move v4, v6

    .line 773
    goto :goto_2
.end method

.method private readPersistedSettings()V
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/4 v11, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 784
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 786
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 789
    .local v3, ringerModeFromSettings:I
    move v2, v3

    .line 792
    .local v2, ringerMode:I
    invoke-static {v2}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 793
    const/4 v2, 0x2

    .line 795
    :cond_0
    if-ne v2, v4, :cond_1

    iget-boolean v7, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_1

    .line 796
    const/4 v2, 0x0

    .line 798
    :cond_1
    if-eq v2, v3, :cond_2

    .line 799
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 801
    :cond_2
    iget-object v8, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 802
    :try_start_0
    iput v2, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 807
    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-boolean v7, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v7, :cond_3

    move v7, v6

    :goto_0
    invoke-static {v9, v10, v7}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 811
    iget v7, p0, Landroid/media/AudioService;->mVibrateSetting:I

    const/4 v9, 0x0

    iget-boolean v10, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v10, :cond_4

    :goto_1
    invoke-static {v7, v9, v6}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 818
    const-string/jumbo v6, "mode_ringer_streams_affected"

    const/16 v7, 0xa6

    const/4 v9, -0x2

    invoke-static {v0, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 825
    iget v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit8 v6, v6, 0x26

    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 829
    iget-boolean v6, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v6, :cond_5

    .line 830
    iget v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit8 v6, v6, -0x9

    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 834
    :goto_2
    iget-object v6, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    :try_start_1
    iget-object v7, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 836
    iget v7, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v7, v7, -0x81

    iput v7, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 840
    :goto_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 842
    :try_start_2
    const-string/jumbo v6, "mode_ringer_streams_affected"

    iget v7, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    const/4 v9, -0x2

    invoke-static {v0, v6, v7, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 847
    invoke-direct {p0, v0}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 848
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 850
    const-string/jumbo v6, "mute_streams_affected"

    const/16 v7, 0xc0e

    invoke-static {v0, v6, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 859
    const-string/jumbo v6, "volume_master_mute"

    invoke-static {v0, v6, v5, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_7

    move v1, v4

    .line 861
    .local v1, masterMute:Z
    :goto_4
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 862
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 867
    invoke-direct {p0, v2}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 870
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 871
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 874
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMediaButtonReceiver()V

    .line 875
    return-void

    .end local v1           #masterMute:Z
    :cond_3
    move v7, v5

    .line 807
    goto :goto_0

    :cond_4
    move v6, v5

    .line 811
    goto :goto_1

    .line 832
    :cond_5
    :try_start_3
    iget v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_2

    .line 848
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 838
    :cond_6
    :try_start_4
    iget v7, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_3

    .line 840
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    move v1, v5

    .line 859
    goto :goto_4
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .parameter "binder"

    .prologue
    .line 6883
    iget-object v3, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 6884
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6885
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6886
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$Record;

    .line 6887
    .local v1, record:Landroid/media/AudioService$Record;
    iget-object v2, v1, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6888
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6889
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removed ringer mode or ringer volume change listener for: event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/media/AudioService$Record;->mEvent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "record.mBinder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6894
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    .end local v1           #record:Landroid/media/AudioService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6895
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 4582
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4585
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4586
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4587
    if-eqz p2, :cond_0

    .line 4589
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 4591
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4592
    const/16 v2, 0xf

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4593
    monitor-exit v3

    .line 4609
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_0
    return-void

    .line 4593
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4598
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4599
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4600
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4601
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4602
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4605
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .parameter "cb"

    .prologue
    .line 4618
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 4620
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4621
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4622
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4623
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4624
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 4618
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4630
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 4633
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 4635
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 4636
    const/16 v3, 0xf

    :try_start_0
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4637
    monitor-exit v4

    .line 4639
    :cond_3
    return-void

    .line 4637
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 5421
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5422
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5423
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5424
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5425
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5426
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5430
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    .locals 10
    .parameter "packageName"

    .prologue
    .line 5333
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5334
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5335
    monitor-exit v4

    .line 5362
    :goto_0
    return-void

    .line 5337
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5338
    .local v0, oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5340
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5341
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5342
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5344
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 5345
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_1

    .line 5361
    .end local v0           #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5348
    .restart local v0       #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5350
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5361
    :cond_3
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 5353
    :cond_4
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 5356
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private rescaleIndex(III)I
    .locals 2
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 878
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 2321
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2322
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 2323
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 2325
    monitor-exit v1

    .line 2326
    return-void

    .line 2325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreMasterVolume()V
    .locals 5

    .prologue
    .line 1491
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_0

    .line 1492
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x4080

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1494
    .local v0, volume:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 1495
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1498
    .end local v0           #volume:F
    :cond_0
    return-void
.end method

.method private restoreMediaButtonReceiver()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5369
    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "media_button_receiver"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5371
    .local v3, receiverName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5372
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 5375
    .local v0, eventReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5377
    .local v1, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5378
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 5380
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5382
    .end local v0           #eventReceiver:Landroid/content/ComponentName;
    .end local v1           #mediaButtonIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1184
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1188
    return-void

    .line 1186
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Z)V
    .locals 14
    .parameter "device"
    .parameter "state"
    .parameter "name"
    .parameter "shouldBroadcast"

    .prologue
    .line 4052
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 4054
    .local v11, intent:Landroid/content/Intent;
    const-string/jumbo v1, "state"

    move/from16 v0, p2

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4055
    const-string/jumbo v1, "name"

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4056
    const/high16 v1, 0x4000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4058
    const/4 v8, 0x0

    .line 4060
    .local v8, connType:I
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 4061
    const/4 v8, 0x1

    .line 4062
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4063
    const-string/jumbo v1, "microphone"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4079
    :cond_0
    :goto_0
    iget-object v13, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v13

    .line 4080
    if-eqz v8, :cond_1

    .line 4081
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v12, v1, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 4082
    .local v12, newConn:I
    if-eqz p2, :cond_6

    .line 4083
    or-int/2addr v12, v8

    .line 4087
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v1, v1, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v12, v1, :cond_1

    .line 4088
    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v12, v1, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 4089
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4093
    .end local v12           #newConn:I
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4094
    if-nez p4, :cond_7

    .line 4095
    const-string v1, "AudioService"

    const-string/jumbo v2, "sendDeviceConnectionIntent() no need to broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    :goto_2
    return-void

    .line 4064
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 4065
    const/4 v8, 0x2

    .line 4066
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4067
    const-string/jumbo v1, "microphone"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 4068
    :cond_3
    const/16 v1, 0x800

    if-ne p1, v1, :cond_4

    .line 4069
    const/4 v8, 0x4

    .line 4070
    const-string v1, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4071
    :cond_4
    const/16 v1, 0x1000

    if-ne p1, v1, :cond_5

    .line 4072
    const/4 v8, 0x4

    .line 4073
    const-string v1, "android.intent.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4074
    :cond_5
    const/16 v1, 0x400

    if-ne p1, v1, :cond_0

    .line 4075
    const/16 v8, 0x8

    .line 4076
    const-string v1, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4085
    .restart local v12       #newConn:I
    :cond_6
    xor-int/lit8 v1, v8, -0x1

    and-int/2addr v12, v1

    goto :goto_1

    .line 4093
    .end local v12           #newConn:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4101
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4103
    .local v9, ident:J
    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_2
    invoke-static {v11, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4105
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 1
    .parameter "muted"
    .parameter "flags"

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p2}, Landroid/view/VolumePanel;->postMasterMuteChanged(I)V

    .line 1238
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1239
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .locals 2
    .parameter "flags"
    .parameter "oldVolume"
    .parameter "newVolume"

    .prologue
    .line 1227
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v1, p1}, Landroid/view/VolumePanel;->postMasterVolumeChanged(I)V

    .line 1229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1231
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1232
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1233
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 3
    .parameter "handler"
    .parameter "msg"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2860
    if-nez p2, :cond_1

    .line 2861
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2867
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2868
    :goto_0
    return-void

    .line 2862
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2863
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMsg: Msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " existed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .parameter "originalKeyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 4982
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4983
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4985
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4986
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4988
    return-void
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1193
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    return-void

    .line 1195
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 5
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v4, 0x2

    .line 1201
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v1, :cond_0

    if-ne p1, v4, :cond_0

    .line 1202
    const/4 p1, 0x5

    .line 1205
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v1, p1, p4}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 1207
    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_1

    .line 1208
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 1209
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 1210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1212
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1213
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1214
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVolumeUpdate: StreamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1219
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v4, :cond_1

    .line 1220
    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1}, Landroid/media/AudioService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 1223
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 7
    .parameter "rccId"
    .parameter "direction"

    .prologue
    .line 6125
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendVolumeUpdateToRemote(rccId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , dir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    if-nez p2, :cond_1

    .line 6149
    :cond_0
    :goto_0
    return-void

    .line 6130
    :cond_1
    const/4 v2, 0x0

    .line 6131
    .local v2, rvo:Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    .line 6132
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6133
    .local v3, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 6136
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v4, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_2

    .line 6137
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 6141
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6142
    if-eqz v2, :cond_0

    .line 6144
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v2, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6145
    :catch_0
    move-exception v0

    .line 6146
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AudioService"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6141
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 6
    .parameter "newClientGeneration"

    .prologue
    .line 5469
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5470
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5471
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5472
    .local v1, se:Landroid/media/AudioService$RemoteControlStackEntry;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    .line 5474
    :try_start_0
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5475
    :catch_0
    move-exception v0

    .line 5476
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5477
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 5478
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 5482
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #se:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 5452
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    .line 5454
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5463
    :cond_0
    :goto_0
    return-void

    .line 5456
    :catch_0
    move-exception v0

    .line 5457
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5460
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 5495
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 5497
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 5498
    return-void
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 6319
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 6337
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6339
    :goto_0
    return-void

    .line 6321
    :pswitch_0
    const-string v0, "AudioService"

    const-string/jumbo v1, "orientation is landscape"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6325
    :pswitch_1
    const-string v0, "AudioService"

    const-string/jumbo v1, "orientation is portrait"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6326
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6329
    :pswitch_2
    const-string v0, "AudioService"

    const-string/jumbo v1, "orientation is square"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6330
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6333
    :pswitch_3
    const-string v0, "AudioService"

    const-string/jumbo v1, "orientation is undefined"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6334
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerModeInt(IZ)V
    .locals 13
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1440
    iget-object v3, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1441
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1442
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1448
    const-string v0, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerModeInt: Ringermode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    .line 1450
    .local v9, numStreamTypes:I
    add-int/lit8 v11, v9, -0x1

    .local v11, streamType:I
    :goto_0
    if-ltz v11, :cond_8

    .line 1451
    invoke-direct {p0, v11}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1452
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v12, :cond_6

    .line 1456
    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v11

    if-eq v0, v12, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v11

    if-ne v0, v1, :cond_5

    .line 1460
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v0, v11

    monitor-enter v3

    .line 1461
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1462
    .local v10, set:Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1463
    .local v8, i:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1464
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1465
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 1466
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1469
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v8           #i:Ljava/util/Iterator;
    .end local v10           #set:Ljava/util/Set;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1442
    .end local v9           #numStreamTypes:I
    .end local v11           #streamType:I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1469
    .restart local v8       #i:Ljava/util/Iterator;
    .restart local v9       #numStreamTypes:I
    .restart local v10       #set:Ljava/util/Set;
    .restart local v11       #streamType:I
    :cond_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1471
    .end local v8           #i:Ljava/util/Iterator;
    .end local v10           #set:Ljava/util/Set;
    :cond_5
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1472
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v3, v6, v11

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1450
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1475
    :cond_7
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eq p1, v12, :cond_6

    .line 1477
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v6}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1478
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v3, v6, v11

    or-int/2addr v0, v3

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_2

    .line 1484
    :cond_8
    if-eqz p2, :cond_9

    .line 1485
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1488
    :cond_9
    return-void
.end method

.method private setSafeMediaVolumeEnabled(Z)V
    .locals 10
    .parameter "on"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 6411
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 6414
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mCheckSafeMediaType:I

    if-ne v0, v1, :cond_2

    .line 6415
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v8, v0, 0x3

    .line 6416
    .local v8, safeMusicVolumeState:I
    if-eqz v8, :cond_0

    if-eq v8, v2, :cond_0

    .line 6418
    if-eqz p1, :cond_1

    if-ne v8, v3, :cond_1

    .line 6419
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6421
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSafeMediaVolume(I)V

    .line 6464
    .end local v8           #safeMusicVolumeState:I
    :cond_0
    :goto_0
    monitor-exit v9

    .line 6466
    return-void

    .line 6422
    .restart local v8       #safeMusicVolumeState:I
    :cond_1
    if-nez p1, :cond_0

    if-ne v8, v1, :cond_0

    .line 6423
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6425
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 6426
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 6464
    .end local v8           #safeMusicVolumeState:I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6430
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/media/AudioService;->mCheckSafeMediaType:I

    if-ne v0, v4, :cond_0

    .line 6432
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v7, v0, 0x3

    .line 6433
    .local v7, safeFmVolumeState:I
    if-eqz v7, :cond_0

    if-eq v7, v2, :cond_0

    .line 6435
    if-eqz p1, :cond_3

    if-ne v7, v3, :cond_3

    .line 6436
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6438
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSafeMediaVolume(I)V

    goto :goto_0

    .line 6439
    :cond_3
    if-nez p1, :cond_0

    if-ne v7, v1, :cond_0

    .line 6440
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6442
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mFmActiveMs:I

    .line 6443
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x81

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private setStreamVolumeInt(IIIZZ)V
    .locals 7
    .parameter "streamType"
    .parameter "index"
    .parameter "device"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1265
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 1268
    .local v5, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    if-eqz p2, :cond_0

    .line 1271
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 1273
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/16 v6, 0x1f4

    move v3, v2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    invoke-virtual {v5, p2, p3, p5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    .line 1285
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 8
    .parameter "needWakeLock"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5035
    const/4 v3, 0x0

    .line 5040
    .local v3, voiceIntent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 5041
    .local v2, pm:Landroid/os/PowerManager;
    iget-object v6, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 5042
    .local v1, isLocked:Z
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5043
    new-instance v3, Landroid/content/Intent;

    .end local v3           #voiceIntent:Landroid/content/Intent;
    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5050
    .restart local v3       #voiceIntent:Landroid/content/Intent;
    :goto_1
    if-eqz p1, :cond_0

    .line 5051
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5054
    :cond_0
    if-eqz v3, :cond_1

    .line 5055
    const/high16 v4, 0x1080

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5057
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5062
    :cond_1
    if-eqz p1, :cond_2

    .line 5063
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_2
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5066
    :cond_2
    return-void

    .end local v1           #isLocked:Z
    :cond_3
    move v1, v5

    .line 5041
    goto :goto_0

    .line 5045
    .restart local v1       #isLocked:Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3           #voiceIntent:Landroid/content/Intent;
    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5046
    .restart local v3       #voiceIntent:Landroid/content/Intent;
    const-string v6, "android.speech.extras.EXTRA_SECURE"

    if-eqz v1, :cond_5

    iget-object v7, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_3

    .line 5059
    :catch_0
    move-exception v0

    .line 5060
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5062
    if-eqz p1, :cond_2

    .line 5063
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 5062
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz p1, :cond_6

    .line 5063
    iget-object v5, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5062
    :cond_6
    throw v4
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .locals 6
    .parameter "infoChangedFlags"

    .prologue
    .line 5571
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5572
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    move v0, p1

    .line 5575
    .local v0, infoFlagsAboutToBeUsed:I
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_0

    .line 5577
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 5590
    :goto_0
    return-void

    .line 5580
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5581
    :try_start_0
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5583
    const/16 v0, 0xf

    .line 5585
    :cond_1
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5586
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5588
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5586
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateStreamVolumeAlias(Z)V
    .locals 8
    .parameter "updateVolumes"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 730
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 732
    const/4 v7, 0x2

    .line 737
    .local v7, dtmfStreamAlias:I
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v7, 0x0

    .line 740
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 741
    if-eqz p1, :cond_1

    .line 743
    if-ne v7, v2, :cond_3

    .line 744
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/media/AudioService$VolumeStreamState;->applyRingIndexes(Z)V

    .line 745
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Landroid/media/AudioService$VolumeStreamState;->applyRingIndexes(Z)V

    .line 753
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 760
    :cond_1
    return-void

    .line 734
    .end local v7           #dtmfStreamAlias:I
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 735
    const/4 v7, 0x3

    .restart local v7       #dtmfStreamAlias:I
    goto :goto_0

    .line 747
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 749
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    goto :goto_1
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 674
    monitor-enter p0

    .line 675
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 678
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 5
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v4, 0x1

    .line 4754
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    :try_start_0
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4758
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4759
    monitor-exit v2

    .line 4768
    :goto_0
    return v4

    .line 4759
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4760
    :catch_0
    move-exception v0

    .line 4764
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4765
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method public adjustLocalOrRemoteStreamVolume(II)V
    .locals 5
    .parameter "streamType"
    .parameter "direction"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 893
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustLocalOrRemoteStreamVolume(dir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-direct {p0, v4}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    invoke-direct {p0, v4, p2, v3}, Landroid/media/AudioService;->adjustRemoteVolume(III)V

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    invoke-virtual {p0, v4, p2, v3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_0

    .line 899
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p2, v3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public adjustMasterVolume(II)V
    .locals 8
    .parameter "steps"
    .parameter "flags"

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 1031
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1032
    .local v4, volume:I
    const/4 v0, 0x0

    .line 1033
    .local v0, delta:I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1034
    .local v3, numSteps:I
    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 1035
    .local v1, direction:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1036
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 1037
    add-int/2addr v4, v0

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1034
    .end local v1           #direction:I
    .end local v2           #i:I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 1040
    .restart local v1       #direction:I
    .restart local v2       #i:I
    :cond_1
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustMasterVolume volume: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " steps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {p0, v4, p2}, Landroid/media/AudioService;->setMasterVolume(II)V

    .line 1042
    return-void
.end method

.method public adjustStreamVolume(III)V
    .locals 25
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 935
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume() stream="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 938
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v24, v5, p1

    .line 944
    .local v24, streamTypeAlias:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v10, v5, v24

    .line 946
    .local v10, streamState:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v9

    .line 948
    .local v9, device:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v10, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v19

    .line 950
    .local v19, aliasIndex:I
    const/16 v18, 0x1

    .line 953
    .local v18, adjustVolume:Z
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v5, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v23

    .line 958
    .local v23, step:I
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2

    add-int v5, v19, v23

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v5, v9}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v5

    if-nez v5, :cond_2

    .line 960
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v5, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .line 962
    .local v20, index:I
    move/from16 v21, v20

    .line 1025
    .local v21, oldIndex:I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 1026
    return-void

    .line 948
    .end local v18           #adjustVolume:Z
    .end local v19           #aliasIndex:I
    .end local v20           #index:I
    .end local v21           #oldIndex:I
    .end local v23           #step:I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 960
    .restart local v18       #adjustVolume:Z
    .restart local v19       #aliasIndex:I
    .restart local v23       #step:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 964
    :cond_2
    and-int/lit8 p3, p3, -0x21

    .line 965
    const/4 v5, 0x3

    move/from16 v0, v24

    if-ne v0, v5, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_3

    .line 967
    or-int/lit8 p3, p3, 0x20

    .line 968
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v20

    .line 969
    .restart local v20       #index:I
    move/from16 v21, v20

    .restart local v21       #oldIndex:I
    goto :goto_2

    .line 973
    .end local v20           #index:I
    .end local v21           #oldIndex:I
    :cond_3
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    move/from16 v0, v24

    if-ne v0, v5, :cond_6

    .line 975
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v22

    .line 977
    .local v22, ringerMode:I
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_5

    .line 978
    and-int/lit8 p3, p3, -0x11

    .line 982
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v18

    .line 983
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    move/from16 v0, v24

    if-ne v0, v5, :cond_6

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v5, :cond_6

    .line 985
    const/4 v5, 0x0

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 990
    .end local v22           #ringerMode:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v5, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v21

    .line 993
    .restart local v21       #oldIndex:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_9

    .line 994
    if-eqz v18, :cond_7

    .line 997
    const-string v5, "AudioService"

    const-string v6, "adjustStreamVolume: MuteCount > 0."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    mul-int v5, p2, v23

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(II)V

    .line 999
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/16 v11, 0x1f4

    invoke-static/range {v5 .. v11}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1007
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .restart local v20       #index:I
    goto/16 :goto_2

    .line 990
    .end local v20           #index:I
    .end local v21           #oldIndex:I
    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 1009
    .restart local v21       #oldIndex:I
    :cond_9
    if-eqz v18, :cond_a

    mul-int v5, p2, v23

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1012
    const-string v5, "AudioService"

    const-string v6, "adjustStreamVolume: MuteCount = 0."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v17, 0x0

    move v14, v9

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v17}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1021
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .restart local v20       #index:I
    goto/16 :goto_2
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 5
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    const/16 v4, -0xc8

    .line 907
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 910
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 916
    .local v0, streamType:I
    :goto_0
    if-eq v0, v4, :cond_1

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    :cond_0
    and-int/lit8 p3, p3, -0x5

    .line 923
    :cond_1
    if-ne v0, v4, :cond_3

    .line 925
    and-int/lit8 p3, p3, -0x25

    .line 927
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p3}, Landroid/media/AudioService;->adjustRemoteVolume(III)V

    .line 931
    :goto_1
    return-void

    .line 912
    .end local v0           #streamType:I
    :cond_2
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0       #streamType:I
    goto :goto_0

    .line 929
    :cond_3
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_1
.end method

.method public adjustVolume(II)V
    .locals 1
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 887
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 888
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 2871
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2873
    const/4 v1, 0x1

    .line 2879
    :goto_0
    return v1

    .line 2875
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2878
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .parameter "exceptPid"
    .parameter "stopSco"

    .prologue
    .line 2263
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2264
    const/4 v2, 0x0

    .line 2265
    .local v2, savedClient:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2266
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2267
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 2268
    .local v0, cl:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 2269
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2266
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2271
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 2274
    .end local v0           #cl:Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2275
    if-eqz v2, :cond_2

    .line 2276
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2278
    :cond_2
    monitor-exit v5

    .line 2279
    return-void

    .line 2278
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public disableSafeMediaVolume()V
    .locals 2

    .prologue
    .line 6576
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 6577
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 6578
    monitor-exit v1

    .line 6579
    return-void

    .line 6578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 4783
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4784
    return-void
.end method

.method public dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 4787
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4788
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 6616
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6618
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 6619
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 6620
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 6621
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 6622
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 6623
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6624
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6625
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6626
    return-void
.end method

.method public enableHdmiAudio(ZLandroid/os/IBinder;)Z
    .locals 9
    .parameter "enabled"
    .parameter "cb"

    .prologue
    const/4 v5, 0x0

    .line 6724
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableHDMIAudio("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6725
    const/4 v4, 0x0

    .line 6726
    .local v4, state:Ljava/lang/String;
    const/4 v0, 0x0

    .line 6728
    .local v0, bRet:Z
    iget-object v6, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "GetHDMIAudioStatus"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6729
    if-eqz p1, :cond_0

    const-string v6, "GetHDMIAudioStatus=false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-nez p1, :cond_7

    const-string v6, "GetHDMIAudioStatus=true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6731
    :cond_1
    if-eqz p1, :cond_5

    const-string v1, "SetHDMIAudioEnable=1"

    .line 6732
    .local v1, cmdStr:Ljava/lang/String;
    :goto_0
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command string = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6733
    iget-object v6, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 6734
    iget-object v6, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "GetHDMIAudioStatus"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6736
    if-eqz p1, :cond_2

    const-string v6, "GetHDMIAudioStatus=true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-nez p1, :cond_6

    const-string v6, "GetHDMIAudioStatus=false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6737
    :cond_3
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableHDMIAudio(), set HDMI audio enable state succeed, audio state =\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6738
    const/4 v0, 0x1

    .line 6743
    :goto_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 6744
    new-instance v3, Landroid/media/AudioService$EnableHDMIAudioDeathHandler;

    invoke-direct {v3, p0, p2}, Landroid/media/AudioService$EnableHDMIAudioDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 6746
    .local v3, hdl:Landroid/media/AudioService$EnableHDMIAudioDeathHandler;
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p2, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #cmdStr:Ljava/lang/String;
    .end local v3           #hdl:Landroid/media/AudioService$EnableHDMIAudioDeathHandler;
    :cond_4
    :goto_2
    move v5, v0

    .line 6756
    :goto_3
    return v5

    .line 6731
    :cond_5
    const-string v1, "SetHDMIAudioEnable=0"

    goto :goto_0

    .line 6740
    .restart local v1       #cmdStr:Ljava/lang/String;
    :cond_6
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableHDMIAudio(), set HDMI audio enable state failed, audio state = \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6747
    .restart local v3       #hdl:Landroid/media/AudioService$EnableHDMIAudioDeathHandler;
    :catch_0
    move-exception v2

    .line 6749
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableHDMIAudio("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") could not link to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binder death."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6754
    .end local v1           #cmdStr:Ljava/lang/String;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #hdl:Landroid/media/AudioService$EnableHDMIAudioDeathHandler;
    :cond_7
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableHDMIAudio(), Target HDMI audio state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but current state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fail or not need to call audio driver"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .parameter "streamType"
    .parameter "cb"

    .prologue
    .line 1097
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1098
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1099
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1100
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 1102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 1107
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1108
    return-void

    .line 1105
    :cond_1
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 2

    .prologue
    .line 1400
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 3
    .parameter "streamType"

    .prologue
    .line 1393
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1394
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1395
    .local v0, device:I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .locals 1

    .prologue
    .line 1388
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .locals 1

    .prologue
    .line 1405
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 1406
    const/4 v0, 0x2

    .line 1408
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getMasterVolume()I
    .locals 1

    .prologue
    .line 1351
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1352
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1719
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteStreamMaxVolume()I
    .locals 3

    .prologue
    .line 6152
    iget-object v1, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v1

    .line 6153
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 6154
    const/4 v0, 0x0

    monitor-exit v1

    .line 6156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 6157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteStreamVolume()I
    .locals 3

    .prologue
    .line 6161
    iget-object v1, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v1

    .line 6162
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 6163
    const/4 v0, 0x0

    monitor-exit v1

    .line 6165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_0

    .line 6166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingerMode()I
    .locals 2

    .prologue
    .line 1414
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1415
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 1416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 6360
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1384
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1337
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1338
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1341
    .local v0, device:I
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 1343
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 1347
    .local v1, index:I
    :goto_0
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    return v2

    .line 1345
    .end local v1           #index:I
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    .restart local v1       #index:I
    goto :goto_0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .parameter "vibrateType"

    .prologue
    .line 1523
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1524
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 2053
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2054
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 2055
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 3

    .prologue
    .line 2036
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBluetoothScoOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .prologue
    .line 6594
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 6595
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6596
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFmOn()Z
    .locals 4

    .prologue
    .line 6781
    const-string v1, "GetFmEnable"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6782
    .local v0, FmStatus:Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFmOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6784
    const-string v1, "GetFmEnable=true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 6785
    const/4 v1, 0x1

    .line 6787
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 1332
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2017
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2685
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2677
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    .locals 11
    .parameter "callback"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    .line 6826
    if-eqz p2, :cond_5

    .line 6827
    iget-object v7, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 6829
    const/4 v4, 0x0

    .line 6831
    .local v4, record:Landroid/media/AudioService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 6832
    .local v1, binder:Landroid/os/IBinder;
    iget-object v6, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 6833
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    move-object v5, v4

    .end local v4           #record:Landroid/media/AudioService$Record;
    .local v5, record:Landroid/media/AudioService$Record;
    :goto_0
    if-ge v3, v0, :cond_2

    .line 6834
    :try_start_1
    iget-object v6, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6835
    .end local v5           #record:Landroid/media/AudioService$Record;
    .restart local v4       #record:Landroid/media/AudioService$Record;
    :try_start_2
    iget-object v6, v4, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    if-ne v1, v6, :cond_1

    .line 6844
    :goto_1
    iput p2, v4, Landroid/media/AudioService$Record;->mEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6846
    if-ne p2, v8, :cond_3

    .line 6848
    :try_start_3
    iget-object v6, v4, Landroid/media/AudioService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget v8, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-interface {v6, v8}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onRingerModeChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6868
    :cond_0
    :goto_2
    :try_start_4
    const-string v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listenRingerModeAndVolume with event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sucessed, mRecords.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", record.mBinder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6871
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6876
    .end local v0           #N:I
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #i:I
    .end local v4           #record:Landroid/media/AudioService$Record;
    :goto_3
    return-void

    .line 6833
    .restart local v0       #N:I
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v4       #record:Landroid/media/AudioService$Record;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4           #record:Landroid/media/AudioService$Record;
    .restart local v5       #record:Landroid/media/AudioService$Record;
    goto :goto_0

    .line 6839
    :cond_2
    :try_start_5
    new-instance v4, Landroid/media/AudioService$Record;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/media/AudioService$Record;-><init>(Landroid/media/AudioService$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6840
    .end local v5           #record:Landroid/media/AudioService$Record;
    .restart local v4       #record:Landroid/media/AudioService$Record;
    :try_start_6
    iput-object v1, v4, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    .line 6841
    iput-object p1, v4, Landroid/media/AudioService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    .line 6842
    iget-object v6, p0, Landroid/media/AudioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6871
    .end local v0           #N:I
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #i:I
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 6849
    .restart local v0       #N:I
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v3       #i:I
    :catch_0
    move-exception v2

    .line 6850
    .local v2, e:Landroid/os/RemoteException;
    :try_start_7
    iget-object v6, v4, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Landroid/media/AudioService;->remove(Landroid/os/IBinder;)V

    .line 6851
    const-string v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenRingerModeAndVolume, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 6853
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v6, 0x4

    if-ne p2, v6, :cond_4

    .line 6855
    :try_start_8
    iget-object v6, v4, Landroid/media/AudioService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 6856
    :catch_1
    move-exception v2

    .line 6857
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_9
    iget-object v6, v4, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Landroid/media/AudioService;->remove(Landroid/os/IBinder;)V

    .line 6858
    const-string v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenRingerModeAndVolume, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 6860
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    const/16 v6, 0x8

    if-ne p2, v6, :cond_0

    .line 6862
    :try_start_a
    iget-object v6, v4, Landroid/media/AudioService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v9

    invoke-interface {v6, v8, v9}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onVibrateSettingChanged(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    .line 6863
    :catch_2
    move-exception v2

    .line 6864
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_b
    iget-object v6, v4, Landroid/media/AudioService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Landroid/media/AudioService;->remove(Landroid/os/IBinder;)V

    .line 6865
    const-string v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenRingerModeAndVolume, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 6873
    .end local v0           #N:I
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i:I
    .end local v4           #record:Landroid/media/AudioService$Record;
    :cond_5
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/media/AudioService;->remove(Landroid/os/IBinder;)V

    .line 6874
    const-string v6, "AudioService"

    const-string/jumbo v7, "listenRingerModeAndVolume with LISTEN_NONE, so remove this listener\'s callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6871
    .restart local v0       #N:I
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v5       #record:Landroid/media/AudioService$Record;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #record:Landroid/media/AudioService$Record;
    .restart local v4       #record:Landroid/media/AudioService$Record;
    goto/16 :goto_4
.end method

.method public loadSoundEffects()Z
    .locals 13

    .prologue
    .line 1742
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1743
    :try_start_0
    iget-boolean v8, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v8, :cond_0

    .line 1744
    const-string v8, "AudioService"

    const-string/jumbo v10, "loadSoundEffects() called before boot complete"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/4 v8, 0x0

    monitor-exit v9

    .line 1847
    :goto_0
    return v8

    .line 1748
    :cond_0
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v8, :cond_1

    .line 1749
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    .line 1846
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1751
    :cond_1
    :try_start_1
    new-instance v8, Landroid/media/SoundPool;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    const/4 v8, 0x0

    :try_start_2
    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    .line 1755
    new-instance v8, Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-direct {v8, p0}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1756
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 1758
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1763
    :goto_1
    :try_start_3
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    if-nez v8, :cond_3

    .line 1764
    const-string v8, "AudioService"

    const-string/jumbo v10, "loadSoundEffects() could not create SoundPool listener or thread"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_2

    .line 1766
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1767
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1769
    :cond_2
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1770
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1771
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1772
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_0

    .line 1759
    :catch_0
    move-exception v0

    .line 1760
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool listener thread."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1780
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [I

    .line 1781
    .local v5, poolId:[I
    const/4 v2, 0x0

    .local v2, fileIdx:I
    :goto_2
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_4

    .line 1782
    const/4 v8, -0x1

    aput v8, v5, v2

    .line 1781
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1790
    :cond_4
    const/4 v4, 0x0

    .line 1791
    .local v4, lastSample:I
    const/4 v1, 0x0

    .local v1, effect:I
    :goto_3
    const/16 v8, 0x9

    if-ge v1, v8, :cond_8

    .line 1793
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-nez v8, :cond_5

    .line 1791
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1796
    :cond_5
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aget v8, v5, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 1797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1800
    .local v3, filePath:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 1801
    .local v6, sampleId:I
    if-gtz v6, :cond_6

    .line 1802
    const-string v8, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1804
    :cond_6
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aput v6, v8, v10

    .line 1805
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v6, v5, v8

    .line 1806
    move v4, v6

    goto :goto_4

    .line 1809
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #sampleId:I
    :cond_7
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget v11, v5, v11

    aput v11, v8, v10

    goto :goto_4

    .line 1813
    :cond_8
    if-eqz v4, :cond_b

    .line 1814
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8, v4}, Landroid/media/AudioService$SoundPoolCallback;->setLastSample(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1817
    :try_start_4
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1818
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    .line 1827
    .local v7, status:I
    :goto_5
    :try_start_5
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_9

    .line 1828
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1829
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1831
    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1832
    if-eqz v7, :cond_e

    .line 1833
    const-string v10, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSoundEffects(), Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_c

    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v8

    :goto_6
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " while loading samples"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const/4 v1, 0x0

    :goto_7
    const/16 v8, 0x9

    if-ge v1, v8, :cond_d

    .line 1838
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-lez v8, :cond_a

    .line 1839
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v8, v10

    .line 1837
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1819
    .end local v7           #status:I
    :catch_1
    move-exception v0

    .line 1820
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool callback."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const/4 v7, -0x1

    .line 1822
    .restart local v7       #status:I
    goto :goto_5

    .line 1824
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #status:I
    :cond_b
    const/4 v7, -0x1

    .restart local v7       #status:I
    goto :goto_5

    .line 1833
    :cond_c
    const/4 v8, -0x1

    goto :goto_6

    .line 1843
    :cond_d
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1844
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1846
    :cond_e
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1847
    if-nez v7, :cond_f

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 5078
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    .line 5079
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5081
    :cond_0
    return-void
.end method

.method public playSoundEffect(I)V
    .locals 7
    .parameter "effectType"

    .prologue
    .line 1724
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1726
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1730
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1731
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/high16 v3, 0x447a

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1733
    return-void
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 5696
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5698
    const-string v0, "AudioService"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5704
    :goto_0
    return-void

    .line 5701
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5702
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 5703
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5660
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5662
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5663
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5664
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5666
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5667
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5668
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5669
    return-void

    .line 5667
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 5668
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 11
    .parameter "mediaIntent"
    .parameter "rcClient"
    .parameter "callingPackageName"

    .prologue
    .line 5730
    const/4 v2, -0x1

    .line 5731
    .local v2, rccId:I
    sget-object v7, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5732
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5734
    :try_start_1
    iget-object v6, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5735
    .local v5, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5736
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5737
    .local v4, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5739
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v6, :cond_1

    .line 5741
    invoke-virtual {v4}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5744
    :cond_1
    iput-object p2, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5745
    iput-object p3, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 5746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 5747
    if-nez p2, :cond_4

    .line 5749
    invoke-virtual {v4}, Landroid/media/AudioService$RemoteControlStackEntry;->resetPlaybackInfo()V

    .line 5781
    .end local v4           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5782
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5784
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5785
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5786
    return v2

    .line 5752
    .restart local v4       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_4
    :try_start_3
    iget v2, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    .line 5756
    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_5

    .line 5758
    :try_start_4
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v9, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v6, v9}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5765
    :cond_5
    :goto_1
    :try_start_5
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5766
    .local v0, b:Landroid/os/IBinder;
    new-instance v3, Landroid/media/AudioService$RcClientDeathHandler;

    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v3, p0, v0, v6}, Landroid/media/AudioService$RcClientDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5769
    .local v3, rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    const/4 v6, 0x0

    :try_start_6
    invoke-interface {v0, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 5775
    :goto_2
    :try_start_7
    iput-object v3, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    goto :goto_0

    .line 5784
    .end local v0           #b:Landroid/os/IBinder;
    .end local v3           #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    .end local v4           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v5           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6

    .line 5785
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 5759
    .restart local v4       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v5       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catch_0
    move-exception v1

    .line 5760
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9
    const-string v6, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error connecting remote control display to client: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5761
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5770
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    :catch_1
    move-exception v1

    .line 5772
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    const/4 v6, 0x0

    iput-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 8
    .parameter "rcd"

    .prologue
    .line 5886
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5887
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5888
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq v3, p1, :cond_0

    if-nez p1, :cond_1

    .line 5889
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5917
    :goto_0
    return-void

    .line 5892
    :cond_1
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5893
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5895
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_startDeathMonitor_syncRcStack()V

    .line 5900
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5901
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5902
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5903
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    .line 5905
    :try_start_4
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v3, v6}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 5906
    :catch_0
    move-exception v0

    .line 5907
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error connecting remote control display to client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5908
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5915
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 5916
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 5914
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    const/16 v3, 0xf

    :try_start_7
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5915
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5916
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method public registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 7
    .parameter "rccId"
    .parameter "rvo"

    .prologue
    const/4 v4, 0x0

    .line 6030
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6032
    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    .prologue
    .line 1934
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->readAudioSettings(Z)V

    .line 1935
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 2
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 5954
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5956
    :try_start_0
    iput p2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5957
    iput p3, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5958
    monitor-exit v1

    .line 5959
    return-void

    .line 5958
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"
    .parameter "callingPackageName"

    .prologue
    .line 4681
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4687
    const-string v1, "AudioService"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    const/4 v1, 0x0

    .line 4749
    :goto_0
    return v1

    .line 4691
    :cond_0
    sget-object v12, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4692
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4693
    const-string v1, "AudioService"

    const-string v2, "Can not Reassign AudioFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4747
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4700
    :cond_1
    :try_start_1
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4702
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4709
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4712
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_2

    .line 4715
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4716
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_0

    .line 4703
    :catch_0
    move-exception v10

    .line 4705
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4720
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$FocusStackEntry;

    .line 4721
    .local v11, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v11}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4725
    .end local v11           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 4727
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v3, p2, -0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4737
    :cond_4
    :goto_1
    const/4 v1, 0x0

    :try_start_5
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4740
    iget-object v13, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/AudioService$FocusStackEntry;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/AudioService$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4744
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4745
    const/16 v1, 0xf

    :try_start_6
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4746
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4747
    :try_start_7
    monitor-exit v12

    .line 4749
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 4730
    :catch_1
    move-exception v10

    .line 4731
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to signal loss of focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 4746
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setAudioPathOutofFMTx()Z
    .locals 5

    .prologue
    .line 6674
    const/4 v1, 0x0

    .line 6675
    .local v1, state:Ljava/lang/String;
    const/4 v0, 0x0

    .line 6677
    .local v0, bRet:Z
    iget-object v2, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "GetFmTxEnable"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6678
    const-string v2, "GetFmTxEnable=true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6679
    iget-object v2, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "SetFmTxEnable=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 6680
    iget-object v2, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "GetFmTxEnable"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6681
    const-string v2, "GetFmTxEnable=false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6682
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set audio path out of FM Tx succeed, audio state =\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6683
    const/4 v0, 0x1

    .line 6689
    :cond_0
    :goto_0
    return v0

    .line 6685
    :cond_1
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set audio path out of FM Tx failed, audio state = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioPathToFMTx(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "cb"

    .prologue
    const/4 v3, 0x0

    .line 6640
    new-instance v1, Landroid/media/AudioService$AudioPathToFMTxDeathHandler;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioService$AudioPathToFMTxDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 6641
    .local v1, hdl:Landroid/media/AudioService$AudioPathToFMTxDeathHandler;
    const/4 v2, 0x0

    .line 6642
    .local v2, state:Ljava/lang/String;
    iget-object v4, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "GetFmTxEnable"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6644
    const-string v4, "GetFmTxEnable=true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6645
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio path already set to FM Tx, audio state =\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6660
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6667
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 6648
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "SetFmTxEnable=1"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 6649
    iget-object v4, p0, Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "GetFmTxEnable"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6650
    const-string v4, "GetFmTxEnable=true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6651
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set audio path to FM Tx succeed, audio state =\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6654
    :cond_1
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set audio path to FM Tx failed, audio state = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6661
    :catch_0
    move-exception v0

    .line 6663
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAudioPathToFMTx could not link to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " binder death."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setAudioProfileStreamVolume(III)V
    .locals 8
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6796
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 6797
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    aget-object v7, v0, v1

    .line 6799
    .local v7, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 6801
    .local v3, device:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v7}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    invoke-virtual {v7, v3, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v6

    .line 6804
    .local v6, oldIndex:I
    mul-int/lit8 v0, p2, 0xa

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, p1, v1}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 6806
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 6808
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result p2

    .line 6811
    invoke-direct {p0, p1, v6, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 6812
    return-void

    .end local v6           #oldIndex:I
    :cond_0
    move v0, v4

    .line 6801
    goto :goto_0

    .restart local v6       #oldIndex:I
    :cond_1
    move v5, v4

    .line 6808
    goto :goto_1
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 8
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 2914
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 2915
    const/16 v1, 0x80

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 2917
    .local v6, delay:I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x16

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2923
    monitor-exit v7

    .line 2924
    return v6

    .line 2923
    .end local v6           #delay:I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 2042
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2043
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 2044
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2048
    monitor-exit v7

    .line 2049
    return-void

    .line 2044
    :cond_0
    const/16 v4, 0xa

    goto :goto_0

    .line 2048
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 6344
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6345
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 6346
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 6347
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6349
    monitor-exit v1

    .line 6350
    return-void

    .line 6347
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 6349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .parameter "on"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2022
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2032
    :goto_0
    return-void

    .line 2025
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2027
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2029
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2031
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v3

    .line 2025
    goto :goto_1
.end method

.method public setMasterMute(ZILandroid/os/IBinder;)V
    .locals 7
    .parameter "state"
    .parameter "flags"
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 1321
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1322
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1324
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1326
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 1328
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 1324
    goto :goto_0
.end method

.method public setMasterVolume(II)V
    .locals 2
    .parameter "volume"
    .parameter "flags"

    .prologue
    .line 1356
    if-gez p1, :cond_1

    .line 1357
    const/4 p1, 0x0

    .line 1361
    :cond_0
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    .line 1362
    return-void

    .line 1358
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 1359
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 5
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v4, -0x1

    .line 1604
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode: mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1606
    const-string v1, "AudioService"

    const-string/jumbo v2, "setMode: No permission!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_0
    :goto_0
    return-void

    .line 1610
    :cond_1
    if-lt p1, v4, :cond_2

    const/4 v1, 0x6

    if-lt p1, v1, :cond_3

    .line 1611
    :cond_2
    const-string v1, "AudioService"

    const-string/jumbo v2, "setMode: Invalid mode!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1615
    :cond_3
    const/4 v0, 0x0

    .line 1616
    .local v0, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1617
    if-ne p1, v4, :cond_4

    .line 1618
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1620
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 1621
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    if-eqz v0, :cond_0

    .line 1625
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 1621
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setModeInt(ILandroid/os/IBinder;I)I
    .locals 17
    .parameter "mode"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1633
    const/4 v13, 0x0

    .line 1634
    .local v13, newModeOwnerPid:I
    if-nez p2, :cond_0

    .line 1635
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1714
    .end local v13           #newModeOwnerPid:I
    .local v14, newModeOwnerPid:I
    :goto_0
    return v14

    .line 1639
    .end local v14           #newModeOwnerPid:I
    .restart local v13       #newModeOwnerPid:I
    :cond_0
    const/4 v11, 0x0

    .line 1640
    .local v11, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1641
    .local v12, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1642
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1643
    .local v10, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    .line 1644
    move-object v11, v10

    .line 1646
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 1647
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1651
    .end local v10           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_2
    const/4 v15, 0x0

    .line 1653
    .local v15, status:I
    :cond_3
    if-nez p1, :cond_9

    .line 1655
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1656
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v11, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1657
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1658
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 1678
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_d

    .line 1679
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v15

    .line 1680
    if-nez v15, :cond_b

    .line 1681
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioService;->mMode:I

    .line 1693
    :goto_2
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1695
    :cond_5
    if-nez v15, :cond_8

    .line 1696
    if-eqz p1, :cond_6

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1698
    const-string v3, "AudioService"

    const-string/jumbo v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_6
    :goto_3
    const/high16 v3, -0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v16

    .line 1704
    .local v16, streamType:I
    const/16 v3, -0xc8

    move/from16 v0, v16

    if-ne v0, v3, :cond_7

    .line 1706
    const/16 v16, 0x3

    .line 1708
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1709
    .local v6, device:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v16

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v5

    .line 1710
    .local v5, index:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v16

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 1712
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .end local v5           #index:I
    .end local v6           #device:I
    .end local v16           #streamType:I
    :cond_8
    move v14, v13

    .line 1714
    .end local v13           #newModeOwnerPid:I
    .restart local v14       #newModeOwnerPid:I
    goto/16 :goto_0

    .line 1661
    .end local v14           #newModeOwnerPid:I
    .restart local v13       #newModeOwnerPid:I
    :cond_9
    if-nez v11, :cond_a

    .line 1662
    new-instance v11, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 1666
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_a
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1675
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 1667
    :catch_0
    move-exception v9

    .line 1669
    .local v9, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1683
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_b
    if-eqz v11, :cond_c

    .line 1684
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1685
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1688
    :cond_c
    const/16 p1, 0x0

    goto/16 :goto_2

    .line 1691
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1700
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v13

    goto/16 :goto_3
.end method

.method public setPlaybackInfoForRcc(III)V
    .locals 7
    .parameter "rccId"
    .parameter "what"
    .parameter "value"

    .prologue
    .line 5962
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5964
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .locals 8
    .parameter "vol"

    .prologue
    .line 6170
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRemoteStreamVolume(vol="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6171
    const/4 v1, -0x1

    .line 6172
    .local v1, rccId:I
    iget-object v6, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v6

    .line 6173
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v5, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 6174
    monitor-exit v6

    .line 6197
    :cond_0
    :goto_0
    return-void

    .line 6176
    :cond_1
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v1, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 6177
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6178
    const/4 v3, 0x0

    .line 6179
    .local v3, rvo:Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    .line 6180
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 6181
    .local v4, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6182
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 6183
    .local v2, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v5, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v5, v1, :cond_2

    .line 6185
    iget-object v3, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 6189
    .end local v2           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6190
    if-eqz v3, :cond_0

    .line 6192
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v3, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 6193
    :catch_0
    move-exception v0

    .line 6194
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "AudioService"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6177
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #rvo:Landroid/media/IRemoteVolumeObserver;
    .end local v4           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 6189
    .restart local v3       #rvo:Landroid/media/IRemoteVolumeObserver;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public setRemoteSubmixOn(ZI)V
    .locals 7
    .parameter "on"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 2436
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v5, 0x0

    move v4, p2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2441
    return-void

    :cond_0
    move v3, v2

    .line 2436
    goto :goto_0
.end method

.method public setRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    const/4 v1, 0x1

    .line 1427
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 1428
    const/4 p1, 0x0

    .line 1430
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1431
    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1433
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 1435
    invoke-direct {p0}, Landroid/media/AudioService;->notifyRingerModeChanged()V

    .line 1437
    :cond_1
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .parameter "player"

    .prologue
    .line 6354
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6355
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 6356
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 8
    .parameter "on"

    .prologue
    const v7, 0xea60

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1995
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2013
    :goto_0
    return-void

    .line 1998
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2000
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2004
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/media/AudioService;->mHeadsetOrHeadphoneOn:Z

    if-eqz v0, :cond_1

    .line 2005
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x18

    move v2, v3

    move v4, v3

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2007
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x81

    move v2, v3

    move v4, v3

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2012
    :cond_1
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpeakerphoneOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1998
    goto :goto_1
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 3
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1308
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStreamMute: StreamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1312
    :cond_0
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 4
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1298
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamSolo: StreamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1300
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    .line 1299
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1302
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 1304
    :cond_2
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 9
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1046
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1047
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    aget-object v8, v0, v1

    .line 1049
    .local v8, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 1052
    .local v3, device:I
    and-int/lit8 p3, p3, -0x21

    .line 1053
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 1055
    or-int/lit8 p3, p3, 0x20

    .line 1056
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    .line 1057
    move v7, p2

    .line 1092
    .local v7, oldIndex:I
    :goto_0
    invoke-direct {p0, p1, v7, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 1093
    :cond_0
    return-void

    .line 1060
    .end local v7           #oldIndex:I
    :cond_1
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    :goto_1
    invoke-virtual {v8, v3, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v7

    .line 1063
    .restart local v7       #oldIndex:I
    mul-int/lit8 v0, p2, 0xa

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, p1, v1}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 1065
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p2, v3}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1073
    :cond_2
    if-nez p2, :cond_6

    .line 1074
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_5

    move v6, v5

    .line 1076
    .local v6, newRingerMode:I
    :goto_2
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 1084
    :goto_3
    invoke-virtual {p0, v6}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1087
    .end local v6           #newRingerMode:I
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 1089
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result p2

    goto :goto_0

    .end local v7           #oldIndex:I
    :cond_4
    move v0, v4

    .line 1060
    goto :goto_1

    .restart local v7       #oldIndex:I
    :cond_5
    move v6, v4

    .line 1074
    goto :goto_2

    .line 1082
    :cond_6
    const/4 v6, 0x2

    .restart local v6       #newRingerMode:I
    goto :goto_3

    .end local v6           #newRingerMode:I
    :cond_7
    move v5, v4

    .line 1089
    goto :goto_4
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1530
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 1539
    :goto_0
    return-void

    .line 1532
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1535
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1538
    invoke-direct {p0, p1}, Landroid/media/AudioService;->notifyVibrateSettingChanged(I)V

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 8
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    .line 2900
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 2901
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 2902
    .local v6, delay:I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x15

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2908
    monitor-exit v7

    .line 2909
    return-void

    .line 2908
    .end local v6           #delay:I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .parameter "vibrateType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1502
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 1517
    :goto_0
    :pswitch_0
    return v1

    .line 1504
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1507
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1510
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 2060
    const-string v1, "AudioService"

    const-string/jumbo v2, "startBluetoothSco"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2065
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 2066
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_0
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .parameter "observer"

    .prologue
    .line 6365
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 6366
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 6367
    .local v0, routes:Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6368
    monitor-exit v2

    return-object v0

    .line 6369
    .end local v0           #routes:Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 2071
    const-string v1, "AudioService"

    const-string/jumbo v2, "stopBluetoothSco"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 2080
    :cond_0
    :goto_0
    return-void

    .line 2076
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 2077
    .local v0, client:Landroid/media/AudioService$ScoClient;
    if-eqz v0, :cond_0

    .line 2078
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    .line 1856
    iget-object v4, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1857
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 1858
    monitor-exit v4

    .line 1882
    :goto_0
    return-void

    .line 1861
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1862
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1864
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [I

    .line 1865
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1866
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1865
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1869
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    const/16 v3, 0x9

    if-ge v0, v3, :cond_4

    .line 1870
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 1869
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1873
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 1874
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1875
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 1876
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 1881
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1879
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 1880
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1881
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 2
    .parameter "clientId"

    .prologue
    .line 4773
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4774
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4775
    monitor-exit v1

    .line 4776
    return-void

    .line 4775
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    .prologue
    .line 5710
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5712
    const-string v0, "AudioService"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5718
    :goto_0
    return-void

    .line 5715
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5716
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 5717
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5677
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5679
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5680
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5681
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 5682
    .local v0, topOfStackWillChange:Z
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 5683
    if-eqz v0, :cond_0

    .line 5685
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5687
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5688
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5689
    return-void

    .line 5687
    .end local v0           #topOfStackWillChange:Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 5688
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 5
    .parameter "mediaIntent"
    .parameter "rcClient"

    .prologue
    .line 5795
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5796
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5797
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5798
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5800
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5804
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5806
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5807
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    goto :goto_0

    .line 5810
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 5811
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 5810
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5811
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5812
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .parameter "rcd"

    .prologue
    .line 5927
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5929
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq p1, v3, :cond_1

    .line 5931
    :cond_0
    monitor-exit v4

    .line 5951
    :goto_0
    return-void

    .line 5934
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5935
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5938
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5939
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5940
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5941
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 5943
    :try_start_1
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5944
    :catch_0
    move-exception v0

    .line 5945
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error disconnecting remote control display to client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5946
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5950
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
