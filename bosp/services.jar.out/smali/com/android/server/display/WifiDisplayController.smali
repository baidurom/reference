.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x3c

.field private static final CONNECT_MAX_RETRIES:I = 0x3

.field private static final CONNECT_MIN_RETRIES:I = 0x0

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static DEBUG:Z = false

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DISCOVER_PEERS_MAX_RETRIES:I = 0xa

.field private static final DISCOVER_PEERS_RETRY_DELAY_MILLIS:I = 0x1f4

.field public static final DRM_CONTENT_MEDIAPLAYER:Ljava/lang/String; = "com.mediatek.mediaplayer.DRM_PLAY"

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final RECONNECT_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final REMOTE_SUBMIX_ADDRESS:I = 0x0

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"

.field private static final WFDCONTROLLER_AVERATE_SCORE_COUNT:I = 0x4

.field public static final WFDCONTROLLER_HDMI_ENABLE_CONFIG:Ljava/lang/String; = "hdmi_enable_status"

.field private static final WFDCONTROLLER_HDMI_UPDATE:I = 0x2

.field private static final WFDCONTROLLER_INVALID_VALUE:I = -0x1

.field private static final WFDCONTROLLER_LATENCY_INFO_DELAY_MILLIS:I = 0x7d0

.field private static final WFDCONTROLLER_LATENCY_INFO_FIRST_MILLIS:I = 0x64

.field private static final WFDCONTROLLER_LATENCY_INFO_PERIOD_MILLIS:I = 0xbb8

.field private static final WFDCONTROLLER_LINK_INFO_PERIOD_MILLIS:I = 0x7d0

.field private static final WFDCONTROLLER_PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final WFDCONTROLLER_SCORE_THRESHOLD1:I = 0x64

.field private static final WFDCONTROLLER_SCORE_THRESHOLD2:I = 0x50

.field private static final WFDCONTROLLER_SCORE_THRESHOLD3:I = 0x1e

.field private static final WFDCONTROLLER_SCORE_THRESHOLD4:I = 0xa

.field private static final WFDCONTROLLER_WFD_STAT_DISCONNECT:I = 0x0

.field private static final WFDCONTROLLER_WFD_STAT_FILE:Ljava/lang/String; = "/proc/wmt_tm/wfd_stat"

.field private static final WFDCONTROLLER_WFD_STAT_STANDBY:I = 0x1

.field private static final WFDCONTROLLER_WFD_STAT_STREAMING:I = 0x2

.field private static final WFDCONTROLLER_WFD_UPDATE:I = 0x0

.field private static final WFDCONTROLLER_WIFI_APP_SCAN_PERIOD_MILLIS:I = 0x2710

.field private static final WFD_CHANGE_RESOLUTION_DIALOG:I = 0x5

.field public static final WFD_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field public static final WFD_CONNECTION:Ljava/lang/String; = "com.mediatek.wfd.connection"

.field private static final WFD_HDMI_EXCLUDED_DIALOG_HDMI_UPDATE:I = 0x3

.field private static final WFD_HDMI_EXCLUDED_DIALOG_WFD_UPDATE:I = 0x2

.field private static final WFD_RECONNECT_DIALOG:I = 0x4

.field private static final WFD_SOUND_PATH_DIALOG:I = 0x6

.field private static final WFD_WIFIP2P_EXCLUDED_DIALOG:I = 0x1

.field private static final wfdLinkInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field private WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

.field private WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

.field private WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

.field private WFDCONTROLLER_DISPLAY_RESOLUTION:I

.field private WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

.field private WFDCONTROLLER_DISPLAY_TOAST_TIME:I

.field private WFDCONTROLLER_QE_ON:Z

.field private WFDCONTROLLER_SQC_INFO_ON:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutoChannelSelection:Z

.field private mAutoEnableWifi:Z

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupShowTouchVal:I

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mChangeResolutionDialog:Landroid/app/AlertDialog;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDRMContent_Mediaplayer:Z

.field private final mDelayProfiling:Ljava/lang/Runnable;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDiscoverPeersInProgress:Z

.field private mDiscoverPeersRetriesLeft:I

.field private final mDisplayNotification:Ljava/lang/Runnable;

.field private final mDisplayToast:Ljava/lang/Runnable;

.field private mFast_DesiredMac:Ljava/lang/String;

.field private mFast_NeedFastRtsp:Z

.field private mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

.field private mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

.field private mHDMIOnSetting:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

.field private mIsConnected_OtherP2p:Z

.field private mIsConnecting_P2p_Rtsp:Z

.field private mIsNeedRotate:Z

.field private mIsWFDConnected:Z

.field private mLastTimeConnected:Z

.field private final mLatencyInfo:Ljava/lang/Runnable;

.field mLatencyPanelView:Landroid/view/View;

.field private mLatencyProfiling:I

.field private mLevel:I

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotiTimerStarted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPlayerID_Mediaplayer:I

.field private mPrevResolution:I

.field private mRTSPConnecting:Z

.field private final mReConnect:Ljava/lang/Runnable;

.field private mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mReConnecteDialog:Landroid/app/AlertDialog;

.field private mReConnecting:Z

.field private mReConnection_Timeout_Remain_Seconds:I

.field private mReconnectForResolutionChange:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRemoteSubmixOn:Z

.field private mResolution:I

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private final mScanWifiAp:Ljava/lang/Runnable;

.field private mScore:[I

.field private mScoreIndex:I

.field private mScoreLevel:I

.field private mSoundPathDialog:Landroid/app/AlertDialog;

.field mTextView:Landroid/widget/TextView;

.field private mToastTimerStarted:Z

.field private mUserDecided:Z

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field private mWfdInfoDisabled:Z

.field private mWifiApConnected:Z

.field private mWifiChannelId:I

.field private mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

.field private mWifiDisplayOnSetting:Z

.field private final mWifiLinkInfo:Ljava/lang/Runnable;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiRate:I

.field private mWifiScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    .line 2106
    const-string v0, "sta_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}|any)\nlink_score=(.*)\nper=(.*)\nrssi=(.*)\nphy=(.*)\nrate=(.*)\ntotal_cnt=(.*)\nthreshold_cnt=(.*)\nfail_cnt=(.*)\ntimeout_cnt=(.*)\napt=(.*)\naat=(.*)\nTC_buf_full_cnt=(.*)\nTC_sta_que_len=(.*)\nTC_avg_que_len=(.*)\nTC_cur_que_len=(.*)\nflag=(.*)\nreserved0=(.*)\nreserved1=(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .locals 11
    .parameter "context"
    .parameter "handler"
    .parameter "listener"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    .line 277
    iput-boolean v8, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    .line 278
    iput-boolean v10, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    .line 280
    iput-boolean v8, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    .line 281
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 284
    iput-boolean v8, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 286
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    .line 287
    iput-boolean v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    .line 288
    iput-boolean v8, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfoDisabled:Z

    .line 290
    iput-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 291
    iput-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 295
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    .line 296
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 298
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 299
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 300
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    .line 301
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    .line 1343
    new-instance v5, Lcom/android/server/display/WifiDisplayController$14;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 1355
    new-instance v5, Lcom/android/server/display/WifiDisplayController$15;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 1534
    new-instance v5, Lcom/android/server/display/WifiDisplayController$18;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 2127
    new-instance v5, Lcom/android/server/display/WifiDisplayController$19;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    .line 2461
    new-instance v5, Lcom/android/server/display/WifiDisplayController$20;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2926
    new-instance v5, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    .line 2977
    new-instance v5, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    .line 2998
    new-instance v5, Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    .line 3056
    new-instance v5, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    .line 3073
    new-instance v5, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    .line 3117
    new-instance v5, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v5, p0}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    .line 340
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 341
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 342
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 344
    const-string v5, "wifip2p"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 345
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 347
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 351
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 354
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v5, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v5, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v5, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v1, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 366
    new-instance v3, Lcom/android/server/display/WifiDisplayController$1;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 375
    .local v3, settingsObserver:Landroid/database/ContentObserver;
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 376
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "wifi_display_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 378
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    .line 382
    new-instance v4, Lcom/android/server/display/WifiDisplayController$2;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 389
    .local v4, settingsObserverHDMI:Landroid/database/ContentObserver;
    const-string v5, "hdmi_enable_status"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 392
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 393
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 394
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DisplayMetrics, Width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_0

    .line 396
    iput-boolean v10, p0, Lcom/android/server/display/WifiDisplayController;->mIsNeedRotate:Z

    .line 400
    :cond_0
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/display/WifiDisplayController;->registerEMObserver(II)V

    .line 402
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 406
    invoke-direct {p0, v9}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    .line 407
    invoke-direct {p0, v8}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    .line 408
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v5, v6, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdSessionMode(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettingsHDMI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I

    return v0
.end method

.method static synthetic access$1020(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 128
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/display/WifiDisplayController;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->sendKeyEvent(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/display/WifiDisplayController;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->sendTap(FF)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$4020(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->retryConnection()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->actionAtConnectionFailed()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->actionAtConnecting()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->actionAtConnected(Landroid/hardware/display/WifiDisplay;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->updateWifiChannelId(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    return p1
.end method

.method static synthetic access$5600()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->parseDec(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->parseFloat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSignalLevel()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleResolutionChange()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleLatencyProfilingChange()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleSecureOptionChange()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiApNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    return v0
.end method

.method static synthetic access$7600(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return p1
.end method

.method static synthetic access$8102(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->showNotification()V

    return-void
.end method

.method static synthetic access$8302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return v0
.end method

.method static synthetic access$8602(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return p1
.end method

.method static synthetic access$8700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    return v0
.end method

.method static synthetic access$8902(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_WifiDirectExcludeDialog()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_HDMIExcludeDialog_WfdUpdate()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/display/WifiDisplayController;)Lcom/mediatek/common/hdmi/IHDMINative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_HDMIExcludeDialog_HDMIUpdate()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->revertResolutionChange()V

    return-void
.end method

.method static synthetic access$9602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    return p1
.end method

.method private actionAtConnected(Landroid/hardware/display/WifiDisplay;I)V
    .locals 11
    .parameter "display"
    .parameter "flags"

    .prologue
    const-wide/16 v9, 0x7d0

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1809
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 1811
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.mediatek.wfd.connection"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1812
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x800

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1813
    const-string v5, "connected"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1814
    if-eqz p1, :cond_7

    .line 1815
    const-string v5, "device_address"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    const-string v5, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1817
    const-string v5, "device_alias"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1826
    :goto_0
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_8

    move v2, v4

    .line 1827
    .local v2, secure:Z
    :goto_1
    if-eqz v2, :cond_9

    .line 1828
    const-string v5, "secure"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1833
    :goto_2
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secure:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-ne v4, v5, :cond_0

    .line 1843
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 1846
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 1847
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v5, :cond_b

    .line 1848
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1849
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1850
    const-string v5, "WifiDisplayController"

    const-string v6, "acquire wifilock"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1861
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v5, :cond_2

    .line 1863
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1864
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetSignalParam()V

    .line 1870
    :cond_2
    const-string v5, "af.policy.r_submix_prio_adjust"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 1871
    .local v3, show:Z
    :cond_3
    if-eqz v3, :cond_4

    .line 1872
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->checkA2dpStatus()V

    .line 1876
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateChosenCapability()V

    .line 1879
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 1881
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1888
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->notifyClearMotion(Z)V

    .line 1892
    iget-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-eqz v4, :cond_6

    .line 1893
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->checkIfWifiApIs11G()V

    .line 1896
    :cond_6
    return-void

    .line 1819
    .end local v2           #secure:Z
    .end local v3           #show:Z
    :cond_7
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", null display"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const-string v5, "device_address"

    const-string v6, "00:00:00:00:00:00"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    const-string v5, "device_name"

    const-string v6, "wifidisplay dongle"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1822
    const-string v5, "device_alias"

    const-string v6, "wifidisplay dongle"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 1826
    goto/16 :goto_1

    .line 1831
    .restart local v2       #secure:Z
    :cond_9
    const-string v5, "secure"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", failed to sendStickyBroadcastAsUser(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1854
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    const-string v5, "WifiDisplayController"

    const-string v6, "WFD connected, and WifiLock is Held!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1857
    :cond_b
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actionAtConnected(): mWifiManager: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWifiLock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private actionAtConnecting()V
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    .line 1977
    :cond_0
    return-void
.end method

.method private actionAtConnectionFailed()V
    .locals 3

    .prologue
    .line 1980
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-ne v0, v1, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v1, 0x2050086

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1983
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 1985
    :cond_0
    return-void
.end method

.method private actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V
    .locals 7
    .parameter "display"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1910
    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 1912
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.wfd.connection"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1914
    const-string v2, "connected"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1915
    if-eqz p1, :cond_3

    .line 1916
    const-string v2, "device_address"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1917
    const-string v2, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1918
    const-string v2, "device_alias"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1932
    :goto_1
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-ne v2, v3, :cond_0

    .line 1933
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v3, 0x2050086

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1935
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 1938
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 1939
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_5

    .line 1940
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1941
    sget-boolean v2, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1942
    const-string v2, "WifiDisplayController"

    const-string v3, "release wifilock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1953
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v2, :cond_2

    .line 1954
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1956
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->clearNotify()V

    .line 1962
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateChosenCapability()V

    .line 1965
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopProfilingInfo()V

    .line 1970
    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->notifyClearMotion(Z)V

    .line 1971
    return-void

    .line 1920
    :cond_3
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", null display"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    const-string v2, "device_address"

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1922
    const-string v2, "device_name"

    const-string v3, "wifidisplay dongle"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1923
    const-string v2, "device_alias"

    const-string v3, "wifidisplay dongle"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1927
    :catch_0
    move-exception v0

    .line 1928
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", failed to sendStickyBroadcastAsUser(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1946
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v2, "WifiDisplayController"

    const-string v3, "WFD disconnected, and WifiLock isn\'t Held!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1949
    :cond_5
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionAtDisconnected(): mWifiManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWifiLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 10
    .parameter "display"
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "flags"

    .prologue
    .line 1393
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1394
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advertiseDisplay(): ----->\n\tdisplay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\tsurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\twidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\theight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\tflags: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    if-ne v0, p4, :cond_1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    if-eq v0, p5, :cond_3

    .line 1408
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1409
    .local v4, oldDisplay:Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1411
    .local v2, oldSurface:Landroid/view/Surface;
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1412
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1413
    iput p3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    .line 1414
    iput p4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 1415
    iput p5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    .line 1417
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/WifiDisplayController$17;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1466
    .end local v2           #oldSurface:Landroid/view/Surface;
    .end local v4           #oldDisplay:Landroid/hardware/display/WifiDisplay;
    :cond_2
    :goto_0
    return-void

    .line 1461
    :cond_3
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1462
    const-string v0, "WifiDisplayController"

    const-string v1, "advertiseDisplay() : no need update!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkA2dpStatus()V
    .locals 6

    .prologue
    .line 2690
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2692
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2693
    const-string v3, "WifiDisplayController"

    const-string v4, "checkA2dpStatus(), BT is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_0
    :goto_0
    return-void

    .line 2699
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_sound_path_do_not_remind"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2703
    .local v2, value:I
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkA2dpStatus(), value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2710
    new-instance v1, Lcom/android/server/display/WifiDisplayController$21;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 2734
    .local v1, profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0
.end method

.method private checkIfWifiApIs11G()V
    .locals 11

    .prologue
    .line 3568
    const-string v8, "WifiDisplayController"

    const-string v9, "checkIfWifiApIs11G()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiStatus()Ljava/lang/String;

    move-result-object v7

    .line 3571
    .local v7, wifiStatus:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 3572
    const-string v8, "WifiDisplayController"

    const-string v9, "getWifiStatus() return null."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    :cond_0
    :goto_0
    return-void

    .line 3576
    :cond_1
    sget-boolean v8, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 3577
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWifiStatus() return: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    :cond_2
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3582
    .local v6, tokens:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 3583
    .local v5, token:Ljava/lang/String;
    const-string v8, "group_cipher="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3584
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3585
    .local v4, nameValue:[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->nameValueAssign([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3586
    .local v1, cipher:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 3587
    const-string v8, "WifiDisplayController"

    const-string v9, "cipher is null."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3591
    :cond_3
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cipher is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    const-string v8, "TKIP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "WEP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3595
    :cond_4
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v9, 0x2050092

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3582
    .end local v1           #cipher:Ljava/lang/String;
    .end local v4           #nameValue:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private chooseNo_HDMIExcludeDialog_HDMIUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3182
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_enable_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3183
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    if-eqz v0, :cond_0

    .line 3184
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v0, v2}, Lcom/mediatek/common/hdmi/IHDMINative;->enableHDMI(Z)Z

    .line 3187
    :cond_0
    return-void
.end method

.method private chooseNo_HDMIExcludeDialog_WfdUpdate()V
    .locals 3

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3177
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 3179
    return-void
.end method

.method private chooseNo_WifiDirectExcludeDialog()V
    .locals 1

    .prologue
    .line 3171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    .line 3173
    return-void
.end method

.method private clearNotify()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3039
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    if-eqz v0, :cond_0

    .line 3040
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3041
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3045
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    if-eqz v0, :cond_1

    .line 3047
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3048
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3052
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x2050080

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3054
    return-void
.end method

.method private computeFeatureState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 631
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_0

    .line 633
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    .line 634
    const-string v0, "WifiDisplayController"

    const-string v1, "Wifi p2p is disabled, update WIFI_DISPLAY_ON as false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 645
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 787
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfoDisabled:Z

    if-eqz v0, :cond_0

    .line 791
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 797
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 798
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 807
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 808
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: connecting to the same dongle already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 815
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_4

    .line 818
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 819
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not part way through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connecting to a different device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 826
    :cond_4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 827
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    .line 828
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    goto :goto_0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 4
    .parameter "device"

    .prologue
    .line 1531
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3
    .parameter "device"

    .prologue
    .line 1523
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 3
    .parameter "group"

    .prologue
    .line 1527
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private dialogReconnect()V
    .locals 1

    .prologue
    .line 3113
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 3115
    return-void
.end method

.method private dialogWfdHdmiConflict(I)V
    .locals 4
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    .line 2088
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2089
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v0, :cond_1

    .line 2093
    const-class v0, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/hdmi/IHDMINative;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 2096
    :cond_1
    if-nez p1, :cond_3

    .line 2097
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 2104
    :cond_2
    :goto_0
    return-void

    .line 2099
    :cond_3
    if-ne v3, p1, :cond_2

    .line 2100
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    .prologue
    .line 832
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect, mRemoteDisplayInterface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 835
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    .line 836
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 841
    return-void
.end method

.method private discoverPeers()V
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 652
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I

    .line 653
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    .line 654
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    .line 656
    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 3533
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 3534
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 3535
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 3537
    return-void
.end method

.method private dismissDialogDetail(Landroid/app/AlertDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 3540
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3541
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3544
    :cond_0
    return-void
.end method

.method private enableWifiDisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2022
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v1, :cond_2

    .line 2025
    const-string v1, "WifiDisplayController"

    const-string v2, "Enable wifi automatically."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    .line 2028
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 2029
    .local v0, wifiApState:I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2031
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2033
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2035
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v2, 0x2050088

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2042
    .end local v0           #wifiApState:I
    :goto_0
    return-void

    .line 2039
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    .line 2040
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    goto :goto_0
.end method

.method private getAverageScore()I
    .locals 6

    .prologue
    .line 2300
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    rem-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    aput v5, v3, v4

    .line 2301
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 2303
    const/4 v0, 0x0

    .line 2304
    .local v0, count:I
    const/4 v2, 0x0

    .line 2305
    .local v2, sum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2306
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2307
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 2308
    add-int/lit8 v0, v0, 0x1

    .line 2305
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2311
    :cond_1
    div-int v3, v2, v0

    return v3
.end method

.method private getFreqId(I)I
    .locals 1
    .parameter "frequency"

    .prologue
    .line 2892
    sparse-switch p1, :sswitch_data_0

    .line 2922
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2894
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2896
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 2898
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 2900
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 2902
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 2904
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 2906
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 2908
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 2910
    :sswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 2912
    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 2914
    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 2916
    :sswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 2918
    :sswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 2920
    :sswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 2892
    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_0
        0x971 -> :sswitch_1
        0x976 -> :sswitch_2
        0x97b -> :sswitch_3
        0x980 -> :sswitch_4
        0x985 -> :sswitch_5
        0x98a -> :sswitch_6
        0x98f -> :sswitch_7
        0x994 -> :sswitch_8
        0x999 -> :sswitch_9
        0x99e -> :sswitch_a
        0x9a3 -> :sswitch_b
        0x9a8 -> :sswitch_c
        0x9b4 -> :sswitch_d
    .end sparse-switch
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .locals 8
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 1481
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1488
    .local v3, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 1489
    .local v1, addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1490
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1491
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 1492
    check-cast v0, Ljava/net/Inet4Address;

    .line 1498
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #iface:Ljava/net/NetworkInterface;
    :goto_0
    return-object v0

    .line 1482
    :catch_0
    move-exception v2

    .line 1483
    .local v2, ex:Ljava/net/SocketException;
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain address of network interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 1485
    goto :goto_0

    .line 1496
    .end local v2           #ex:Ljava/net/SocketException;
    .restart local v1       #addrs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v3       #iface:Ljava/net/NetworkInterface;
    :cond_1
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain address of network interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it had no IPv4 addresses."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 1498
    goto :goto_0
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 1502
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    const/16 v0, 0x216a

    .line 1507
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c44

    goto :goto_0
.end method

.method private getResolutionIndex(I)I
    .locals 1
    .parameter "settingValue"

    .prologue
    const/4 v0, 0x5

    .line 2528
    packed-switch p1, :pswitch_data_0

    .line 2541
    :goto_0
    :pswitch_0
    return v0

    .line 2536
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 2539
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 2528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWifiApNum()I
    .locals 11

    .prologue
    .line 2831
    const/4 v1, 0x0

    .line 2832
    .local v1, count:I
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 2833
    .local v6, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2835
    .local v0, SSIDList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    .line 2836
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 2838
    .local v5, result:Landroid/net/wifi/ScanResult;
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "[IBSS]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2843
    iget v8, v5, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v8}, Lcom/android/server/display/WifiDisplayController;->getFreqId(I)I

    move-result v8

    iget v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    if-ne v8, v9, :cond_0

    .line 2845
    const/4 v2, 0x0

    .line 2847
    .local v2, duplicate:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2848
    .local v7, ssid:Ljava/lang/String;
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2849
    const/4 v2, 0x1

    .line 2854
    .end local v7           #ssid:Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_0

    .line 2855
    sget-boolean v8, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 2856
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AP SSID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_3
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2859
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2865
    .end local v2           #duplicate:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #result:Landroid/net/wifi/ScanResult;
    :cond_4
    return v1
.end method

.method private getWifiLock()V
    .locals 3

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "WFD_WifiLock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1793
    :cond_1
    return-void
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 5
    .parameter "networkInfo"
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    .line 1254
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConnectionChanged(), mWfdEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1256
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 1333
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_1

    .line 1334
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    .line 1335
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-ne v4, v0, :cond_1

    .line 1336
    const-string v0, "WifiDisplayController"

    const-string v1, "Wifi P2p connection is connected but it does not wifidisplay trigger"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 1341
    :cond_1
    return-void

    .line 1299
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 1304
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_3

    .line 1305
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1307
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    if-ne v4, v0, :cond_3

    .line 1309
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do scan after disconnected when wfd enabled. forResolutionChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WifiApConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestScan()V

    .line 1313
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    if-eqz v0, :cond_3

    .line 1315
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 1316
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1321
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 1324
    const/4 v0, 0x7

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1325
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect procedure start, ReConnectDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dialogReconnect()V

    goto/16 :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 5
    .parameter "timeoutOccurred"

    .prologue
    .line 1369
    const-string v1, "WifiDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    .line 1372
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    if-lez v1, :cond_2

    .line 1373
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1374
    .local v0, oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$16;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1389
    .end local v0           #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_1
    return-void

    .line 1374
    .restart local v0       #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-wide/16 v1, 0x1f4

    goto :goto_0

    .line 1386
    .end local v0           #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    goto :goto_1
.end method

.method private handleLatencyProfilingChange()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 2613
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_latency_profiling"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2616
    .local v0, value:I
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-ne v0, v1, :cond_0

    .line 2637
    :goto_0
    return-void

    .line 2620
    :cond_0
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLatencyProfilingChange(), connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 2623
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eq v1, v4, :cond_1

    .line 2624
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2628
    :cond_1
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-ne v1, v4, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v1, :cond_3

    .line 2632
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V

    goto :goto_0

    .line 2634
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopProfilingInfo()V

    goto :goto_0
.end method

.method private handleLevelChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3009
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-gez v0, :cond_2

    .line 3012
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    if-nez v0, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3017
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 3021
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    if-nez v0, :cond_1

    .line 3023
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3026
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3035
    :cond_1
    :goto_0
    return-void

    .line 3032
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->clearNotify()V

    goto :goto_0
.end method

.method private handlePeersChanged()V
    .locals 0

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1248
    return-void
.end method

.method private handleResolutionChange()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2548
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_max_resolution"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2551
    .local v3, r:I
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    if-ne v3, v5, :cond_1

    .line 2591
    :cond_0
    :goto_0
    return-void

    .line 2555
    :cond_1
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    .line 2556
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 2558
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleResolutionChange(), resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 2562
    .local v1, idxModified:I
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v2

    .line 2564
    .local v2, idxOriginal:I
    if-eq v1, v2, :cond_0

    .line 2568
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_change_resolution_remind"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 2572
    .local v0, doNotRemind:Z
    :cond_2
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", doNotRemind:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    const-string v5, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v5, :cond_0

    .line 2579
    :cond_3
    if-eqz v0, :cond_4

    .line 2580
    const-string v5, "WifiDisplayController"

    const-string v6, "-- reconnect for resolution change --"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestDisconnect()V

    .line 2584
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    goto/16 :goto_0

    .line 2587
    :cond_4
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    goto/16 :goto_0
.end method

.method private handleScanFinished()V
    .locals 6

    .prologue
    .line 746
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 747
    .local v0, count:I
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    .line 748
    .local v2, displays:[Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 749
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 750
    .local v1, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v2, v3

    .line 751
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    .end local v1           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;I[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    return-void
.end method

.method private handleScanStarted()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    return-void
.end method

.method private handleSecureOptionChange()V
    .locals 4

    .prologue
    .line 2513
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_security_option"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2516
    .local v0, secureOption:I
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    if-ne v0, v1, :cond_0

    .line 2525
    :goto_0
    return-void

    .line 2520
    :cond_0
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecureOptionChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 2524
    const-string v1, "debug.sf.no_security_img"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleStateChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1235
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    .line 1236
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 1238
    if-nez p1, :cond_0

    .line 1239
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dismissDialog()V

    .line 1242
    :cond_0
    return-void
.end method

.method private hideLatencyPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2673
    const-string v1, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2677
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2680
    .local v0, windowManager:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2681
    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 2684
    .end local v0           #windowManager:Landroid/view/WindowManager;
    :cond_0
    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 2685
    return-void
.end method

.method private initSecureOption()V
    .locals 3

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_security_option"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2508
    const-string v0, "wlan.wfd.security.image"

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    return-void
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1677
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1680
    return-void
.end method

.method private injectPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1683
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1684
    const-string v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectPointerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1687
    return-void
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .parameter "deviceType"

    .prologue
    const/4 v0, 0x1

    .line 1518
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 1511
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDebugLevel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2003
    const-string v1, "wlan.wfd.controller.debug"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2004
    .local v0, debugLevel:Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2005
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", debugLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2015
    sput-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    .line 2018
    :goto_0
    return-void

    .line 2009
    :pswitch_0
    sput-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    goto :goto_0

    .line 2012
    :pswitch_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    goto :goto_0

    .line 2007
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadWfdWpsSetup()I
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1988
    const-string v3, "wlan.wfd.wps.setup"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, wfdWpsSetup:Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1990
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wfdWpsSetup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 1998
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 1996
    goto :goto_0

    .line 1992
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nameValueAssign([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nameValue"

    .prologue
    .line 3607
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 3608
    :cond_0
    const/4 v0, 0x0

    .line 3610
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    aget-object v0, p1, v0

    goto :goto_0
.end method

.method private notifyClearMotion(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    .line 3550
    const-string v3, "sys.display.clearMotion.dimmed"

    if-eqz p1, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3556
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3559
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3565
    :goto_1
    return-void

    .line 3550
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 3560
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3561
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", failed to sendBroadcastAsUser(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .parameter "decString"

    .prologue
    .line 2173
    const/4 v1, 0x0

    .line 2176
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2180
    :goto_0
    return v1

    .line 2177
    :catch_0
    move-exception v0

    .line 2178
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse dec string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseFloat(Ljava/lang/String;)I
    .locals 5
    .parameter "floatString"

    .prologue
    .line 2184
    const/4 v1, 0x0

    .line 2187
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 2191
    :goto_0
    return v1

    .line 2188
    :catch_0
    move-exception v0

    .line 2189
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse float string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private popupDialog(Landroid/app/AlertDialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3518
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3519
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3521
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 3523
    return-void
.end method

.method private prepareDialog(I)V
    .locals 12
    .parameter "dialogID"

    .prologue
    const v11, 0x2050091

    const/4 v10, 0x1

    const/4 v9, -0x1

    const v8, #string@decline#t

    const v7, #string@dlg_ok#t

    .line 3190
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 3192
    .local v3, mResource:Landroid/content/res/Resources;
    if-ne v10, p1, :cond_1

    .line 3194
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x2050076

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$31;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$31;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$30;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$29;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$28;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    .line 3251
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    .line 3515
    :cond_0
    :goto_0
    return-void

    .line 3253
    :cond_1
    const/4 v5, 0x2

    if-ne v5, p1, :cond_2

    .line 3255
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x2050073

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$35;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$35;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$34;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$34;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$33;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$33;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$32;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$32;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    .line 3306
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 3308
    :cond_2
    const/4 v5, 0x3

    if-ne v5, p1, :cond_3

    .line 3310
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x2050074

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$39;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$39;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$38;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$38;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$37;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$37;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$36;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$36;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    .line 3354
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 3356
    :cond_3
    const/4 v5, 0x4

    if-ne v5, p1, :cond_4

    .line 3358
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x2050084

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x2050085

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$42;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$42;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$41;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$41;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$40;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$40;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    .line 3392
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 3394
    :cond_4
    const/4 v5, 0x5

    if-ne v5, p1, :cond_5

    .line 3397
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3398
    .local v0, adbInflater:Landroid/view/LayoutInflater;
    const v5, 0x2070003

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3399
    .local v2, checkboxLayout:Landroid/view/View;
    const v5, 0x2100006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3400
    .local v1, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setText(I)V

    .line 3403
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x2050090

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$45;

    invoke-direct {v7, p0, v1}, Lcom/android/server/display/WifiDisplayController$45;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$44;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$44;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$43;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$43;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mChangeResolutionDialog:Landroid/app/AlertDialog;

    .line 3461
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mChangeResolutionDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 3463
    .end local v0           #adbInflater:Landroid/view/LayoutInflater;
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    .end local v2           #checkboxLayout:Landroid/view/View;
    :cond_5
    const/4 v5, 0x6

    if-ne v5, p1, :cond_0

    .line 3466
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3467
    .restart local v0       #adbInflater:Landroid/view/LayoutInflater;
    const v5, 0x2070003

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3468
    .restart local v2       #checkboxLayout:Landroid/view/View;
    const v5, 0x2100006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3469
    .restart local v1       #checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setText(I)V

    .line 3472
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_sound_path_do_not_remind"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3474
    .local v4, value:I
    if-ne v4, v9, :cond_6

    .line 3475
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3479
    :cond_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x2050089

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/WifiDisplayController$47;

    invoke-direct {v7, p0, v1}, Lcom/android/server/display/WifiDisplayController$47;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/WifiDisplayController$46;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$46;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mSoundPathDialog:Landroid/app/AlertDialog;

    .line 3511
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mSoundPathDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 6
    .parameter "display"

    .prologue
    .line 1473
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1476
    return-void
.end method

.method private registerEMObserver(II)V
    .locals 9
    .parameter "widthPixels"
    .parameter "heightPixels"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2363
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b0007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    .line 2364
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b0008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    .line 2365
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b0009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    .line 2366
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 2367
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 2368
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 2370
    const-string v2, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerEMObserver(), tt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",nt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ps:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",psd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",so:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_display_display_toast_time"

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2380
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_display_notification_time"

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2382
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_sqc_info_on"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2384
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_qe_on"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2390
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_display_max_resolution"

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2394
    .local v0, r:I
    if-ne v0, v8, :cond_4

    .line 2395
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    if-gt v2, v7, :cond_2

    .line 2397
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    .line 2416
    :goto_2
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 2417
    .local v1, resolutionIndex:I
    const-string v2, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResolution:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resolutionIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const-string v2, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_display_auto_channel_selection"

    iget-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    if-eqz v6, :cond_6

    :goto_3
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2424
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_max_resolution"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2426
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_power_saving_option"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2428
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_power_saving_delay"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2431
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_latency_profiling"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2433
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_chosen_capability"

    const-string v5, ""

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2435
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetLatencyInfo()V

    .line 2436
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->initSecureOption()V

    .line 2439
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_display_toast_time"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2441
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_notification_time"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2443
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_sqc_info_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2445
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_qe_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2449
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_auto_channel_selection"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2451
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_max_resolution"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2453
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_latency_profiling"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2455
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_security_option"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2459
    return-void

    .end local v0           #r:I
    .end local v1           #resolutionIndex:I
    :cond_0
    move v2, v4

    .line 2382
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 2384
    goto/16 :goto_1

    .line 2400
    .restart local v0       #r:I
    :cond_2
    const/16 v2, 0x438

    if-ne p1, v2, :cond_3

    const/16 v2, 0x780

    if-ne p2, v2, :cond_3

    .line 2401
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2403
    :cond_3
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2408
    :cond_4
    if-ltz v0, :cond_5

    if-gt v0, v7, :cond_5

    .line 2410
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2412
    :cond_5
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .restart local v1       #resolutionIndex:I
    :cond_6
    move v3, v4

    .line 2422
    goto/16 :goto_3
.end method

.method private reportFeatureState()V
    .locals 4

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v0

    .line 620
    .local v0, featureState:I
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFeatureState(), featureState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    return-void
.end method

.method private requestPeers()V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 733
    return-void
.end method

.method private resetLatencyInfo()V
    .locals 3

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wifi_info"

    const-string v2, "0,0,0,0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2825
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wfd_latency"

    const-string v2, "0,0,0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2827
    return-void
.end method

.method private resetReconnectVariable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3165
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 3166
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    .line 3167
    return-void
.end method

.method private resetSignalParam()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2347
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2348
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2350
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 2351
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2352
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 2351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2355
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 2356
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 2358
    return-void
.end method

.method private retryConnection()V
    .locals 2

    .prologue
    .line 847
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 848
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 849
    return-void
.end method

.method private revertResolutionChange()V
    .locals 5

    .prologue
    .line 2595
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revertResolutionChange(), resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v0

    .line 2598
    .local v0, idxModified:I
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 2601
    .local v1, idxOriginal:I
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    const-string v2, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 2607
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_max_resolution"

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2609
    return-void
.end method

.method private sendKeyEvent(II)V
    .locals 13
    .parameter "keyCode"
    .parameter "isDown"

    .prologue
    .line 1660
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1661
    .local v1, now:J
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1662
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->translateAsciiToKeyCode(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 1668
    :goto_0
    return-void

    .line 1665
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->translateAsciiToKeyCode(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->injectKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sendTap(FF)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 1671
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, now:J
    move-wide v2, v0

    move v5, p1

    move v6, p2

    move v7, v4

    .line 1672
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1673
    const/4 v9, 0x1

    move-wide v5, v0

    move-wide v7, v0

    move v10, p1

    move v11, p2

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1674
    return-void
.end method

.method private setAutoChannelSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2739
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoChannelSelection(), auto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    if-eqz v0, :cond_0

    .line 2742
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2746
    :goto_0
    return-void

    .line 2744
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private setRemoteSubmixOn(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1227
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteSubmixOn:Z

    if-eq v0, p1, :cond_0

    .line 1228
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteSubmixOn:Z

    .line 1229
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->setRemoteSubmixOn(ZI)V

    .line 1231
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 1
    .parameter "dialogID"

    .prologue
    .line 3526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    .line 3527
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V

    .line 3529
    return-void
.end method

.method private showLatencyPanel()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 2640
    const-string v3, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2643
    .local v0, adbInflater:Landroid/view/LayoutInflater;
    const v3, 0x2070021

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 2646
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    const v4, 0x210009b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 2647
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    const-string v4, "AP:\nS:\nR:\nAL:\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2655
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2656
    .local v1, layoutParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7ed

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2658
    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2660
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2661
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2662
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2663
    const v3, 0x3f333333

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2666
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2669
    .local v2, windowManager:Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2670
    return-void
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x2050082

    const v5, 0x2050080

    .line 3087
    const-string v3, "WifiDisplayController"

    const-string v4, "showNotification()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3095
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3097
    .local v1, mResource:Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, #drawable@ic_notify_wifidisplay#t

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3103
    .local v0, builder:Landroid/app/Notification$Builder;
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 3106
    .local v2, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v5, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3110
    return-void
.end method

.method private startProfilingInfo()V
    .locals 4

    .prologue
    .line 2793
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2794
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->showLatencyPanel()V

    .line 2799
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2800
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2802
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2803
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2804
    return-void

    .line 2796
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->hideLatencyPanel()V

    goto :goto_0
.end method

.method private stopProfilingInfo()V
    .locals 2

    .prologue
    .line 2809
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->hideLatencyPanel()V

    .line 2812
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2813
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2814
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2817
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetLatencyInfo()V

    .line 2819
    return-void
.end method

.method private translateAsciiToKeyCode(I)I
    .locals 4
    .parameter "ascii"

    .prologue
    .line 1771
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 1772
    add-int/lit8 v0, p1, -0x29

    .line 1783
    :goto_0
    return v0

    .line 1773
    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_1

    .line 1774
    add-int/lit8 v0, p1, -0x24

    goto :goto_0

    .line 1776
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->translateSpecialCode(I)I

    move-result v0

    .line 1777
    .local v0, newKeyCode:I
    if-lez v0, :cond_2

    .line 1778
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "special code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1781
    :cond_2
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateAsciiToKeyCode: ascii is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateSpecialCode(I)I
    .locals 1
    .parameter "ascii"

    .prologue
    .line 1691
    const/4 v0, 0x0

    .line 1692
    .local v0, newKeyCode:I
    sparse-switch p1, :sswitch_data_0

    .line 1767
    :goto_0
    return v0

    .line 1694
    :sswitch_0
    const/16 v0, 0x43

    .line 1695
    goto :goto_0

    .line 1697
    :sswitch_1
    const/16 v0, 0x42

    .line 1698
    goto :goto_0

    .line 1700
    :sswitch_2
    const/16 v0, 0x3b

    .line 1701
    goto :goto_0

    .line 1703
    :sswitch_3
    const/16 v0, 0x73

    .line 1704
    goto :goto_0

    .line 1706
    :sswitch_4
    const/16 v0, 0x3e

    .line 1707
    goto :goto_0

    .line 1709
    :sswitch_5
    const/16 v0, 0x42

    .line 1710
    goto :goto_0

    .line 1712
    :sswitch_6
    const/16 v0, 0x38

    .line 1713
    goto :goto_0

    .line 1715
    :sswitch_7
    const/16 v0, 0x37

    .line 1716
    goto :goto_0

    .line 1718
    :sswitch_8
    const/16 v0, 0x4c

    .line 1719
    goto :goto_0

    .line 1721
    :sswitch_9
    const/16 v0, 0x49

    .line 1722
    goto :goto_0

    .line 1724
    :sswitch_a
    const/16 v0, 0x5c

    .line 1725
    goto :goto_0

    .line 1727
    :sswitch_b
    const/16 v0, 0x5d

    .line 1728
    goto :goto_0

    .line 1730
    :sswitch_c
    const/16 v0, 0x13

    .line 1731
    goto :goto_0

    .line 1733
    :sswitch_d
    const/16 v0, 0x14

    .line 1734
    goto :goto_0

    .line 1736
    :sswitch_e
    const/16 v0, 0x16

    .line 1737
    goto :goto_0

    .line 1739
    :sswitch_f
    const/16 v0, 0x15

    .line 1740
    goto :goto_0

    .line 1742
    :sswitch_10
    const/16 v0, 0x6f

    .line 1743
    goto :goto_0

    .line 1745
    :sswitch_11
    const/16 v0, 0x47

    .line 1746
    goto :goto_0

    .line 1748
    :sswitch_12
    const/16 v0, 0x48

    .line 1749
    goto :goto_0

    .line 1751
    :sswitch_13
    const/16 v0, 0x44

    .line 1752
    goto :goto_0

    .line 1754
    :sswitch_14
    const/16 v0, 0x45

    .line 1755
    goto :goto_0

    .line 1757
    :sswitch_15
    const/16 v0, 0x46

    .line 1758
    goto :goto_0

    .line 1760
    :sswitch_16
    const/16 v0, 0x4a

    .line 1761
    goto :goto_0

    .line 1763
    :sswitch_17
    const/16 v0, 0x4b

    goto :goto_0

    .line 1692
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_5
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x14 -> :sswitch_3
        0x1b -> :sswitch_10
        0x20 -> :sswitch_4
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x25 -> :sswitch_c
        0x26 -> :sswitch_d
        0x27 -> :sswitch_e
        0x28 -> :sswitch_f
        0xba -> :sswitch_16
        0xbb -> :sswitch_15
        0xbc -> :sswitch_7
        0xbd -> :sswitch_14
        0xbe -> :sswitch_6
        0xbf -> :sswitch_8
        0xc0 -> :sswitch_13
        0xdb -> :sswitch_11
        0xdc -> :sswitch_9
        0xdd -> :sswitch_12
        0xde -> :sswitch_17
    .end sparse-switch
.end method

.method private tryDiscoverPeers()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 703
    return-void
.end method

.method private unadvertiseDisplay()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1469
    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1470
    return-void
.end method

.method private updateChosenCapability()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2750
    const-string v0, ""

    .line 2752
    .local v0, capability:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v4, :cond_0

    .line 2754
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 2755
    .local v3, usingPCMAudio:I
    if-ne v3, v6, :cond_1

    .line 2756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LPCM(2 ch),"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2763
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v1

    .line 2764
    .local v1, isCBPOnly:I
    if-ne v1, v6, :cond_2

    .line 2765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "H.264(CBP level 3.1),"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2772
    :goto_1
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v2

    .line 2773
    .local v2, resolutionIndex:I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    .line 2774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1280x720 30p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2782
    .end local v1           #isCBPOnly:I
    .end local v2           #resolutionIndex:I
    .end local v3           #usingPCMAudio:I
    :cond_0
    :goto_2
    const-string v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateChosenCapability(), connected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", capability:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_display_chosen_capability"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2789
    return-void

    .line 2759
    .restart local v3       #usingPCMAudio:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AAC(2 ch),"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2768
    .restart local v1       #isCBPOnly:I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "H.264(CHP level 4.1),"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2775
    .restart local v2       #resolutionIndex:I
    :cond_3
    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    .line 2776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1280x720 60p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2777
    :cond_4
    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    .line 2778
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1920x1080 30p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private updateConnection()V
    .locals 15

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    if-ne v0, v2, :cond_2

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 864
    .local v10, localInterface:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 866
    .local v9, localDeviceName:Ljava/lang/String;
    :goto_1
    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped listening for RTSP connection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from Wifi display : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    .line 871
    const-string v0, "WifiDisplayController"

    const-string v2, "\tbefore dispose() ---> "

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnecting()V

    .line 873
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 874
    const-string v0, "WifiDisplayController"

    const-string v2, "\t<--- after dispose()"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 879
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 881
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V

    .line 882
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 888
    .end local v9           #localDeviceName:Ljava/lang/String;
    .end local v10           #localInterface:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_7

    .line 1224
    :cond_3
    :goto_2
    return-void

    .line 863
    :cond_4
    const-string v10, "localhost"

    goto :goto_0

    .line 864
    .restart local v10       #localInterface:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v9, "N/A"

    goto :goto_1

    .line 891
    .end local v10           #localInterface:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v2, :cond_8

    .line 892
    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting from Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 896
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 898
    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 899
    .local v12, oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$9;

    invoke-direct {v3, p0, v12}, Lcom/android/server/display/WifiDisplayController$9;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2

    .line 930
    .end local v12           #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_3

    .line 933
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v2, :cond_9

    .line 934
    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceling connection to Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 938
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 939
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 941
    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 942
    .restart local v12       #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v3, p0, v12}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_2

    .line 977
    .end local v12           #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_a

    .line 978
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    goto/16 :goto_2

    .line 983
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_e

    .line 984
    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 987
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v7}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 988
    .local v7, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    new-instance v14, Landroid/net/wifi/WpsInfo;

    invoke-direct {v14}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 989
    .local v14, wps:Landroid/net/wifi/WpsInfo;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 990
    const/4 v0, 0x0

    iput v0, v14, Landroid/net/wifi/WpsInfo;->setup:I

    .line 997
    :goto_3
    iput-object v14, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 998
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1000
    const/4 v0, 0x0

    iput v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1002
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 1003
    .local v1, display:Landroid/hardware/display/WifiDisplay;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1006
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->setAutoChannelSelection()V

    .line 1009
    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1010
    .local v11, newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v3, p0, v11}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v2, v7, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1033
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    if-ne v0, v2, :cond_d

    .line 1034
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V

    .line 1039
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    .line 1042
    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1043
    .restart local v12       #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v13

    .line 1044
    .local v13, port:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "127.0.0.1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1045
    .local v8, iface:Ljava/lang/String;
    iput-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdSessionMode(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1048
    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listening for RTSP connection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , Speed-Up rtsp setup, DRM Content isPlaying = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v0, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v0, p0, v12}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-static {v8, v0, v2}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1139
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    const-wide/32 v3, 0x124f8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 991
    .end local v1           #display:Landroid/hardware/display/WifiDisplay;
    .end local v8           #iface:Ljava/lang/String;
    .end local v11           #newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v12           #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v13           #port:I
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 993
    const/4 v0, 0x2

    iput v0, v14, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 995
    :cond_c
    const/4 v0, 0x1

    iput v0, v14, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1036
    .restart local v1       #display:Landroid/hardware/display/WifiDisplay;
    .restart local v11       #newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V

    goto/16 :goto_4

    .line 1145
    .end local v1           #display:Landroid/hardware/display/WifiDisplay;
    .end local v7           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v11           #newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v14           #wps:Landroid/net/wifi/WpsInfo;
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v0, :cond_3

    .line 1146
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1147
    .local v6, addr:Ljava/net/Inet4Address;
    if-nez v6, :cond_3

    .line 1148
    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    goto/16 :goto_2
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 772
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 773
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 775
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDesiredDevice: new information "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 779
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    .line 784
    :cond_1
    return-void
.end method

.method private updateScoreLevel(I)V
    .locals 2
    .parameter "score"

    .prologue
    const/4 v1, 0x0

    .line 2314
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 2315
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-gez v0, :cond_0

    .line 2316
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2318
    :cond_0
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2344
    :goto_0
    return-void

    .line 2320
    :cond_1
    const/16 v0, 0x50

    if-lt p1, v0, :cond_3

    .line 2321
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-gez v0, :cond_2

    .line 2322
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2324
    :cond_2
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2326
    :cond_3
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_5

    .line 2327
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_4

    .line 2328
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2330
    :cond_4
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2332
    :cond_5
    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    .line 2333
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_6

    .line 2334
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2336
    :cond_6
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2339
    :cond_7
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_8

    .line 2340
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2342
    :cond_8
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 420
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->loadDebugLevel()V

    .line 422
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIOnSetting:Z

    .line 427
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-ne v2, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIOnSetting:Z

    if-ne v2, v1, :cond_1

    .line 428
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->dialogWfdHdmiConflict(I)V

    .line 435
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 416
    goto :goto_0

    .line 432
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    goto :goto_1
.end method

.method private updateSettingsHDMI()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2046
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2047
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "hdmi_enable_status"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIOnSetting:Z

    .line 2050
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIOnSetting:Z

    if-ne v2, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-ne v2, v1, :cond_0

    .line 2051
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2052
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->dialogWfdHdmiConflict(I)V

    .line 2062
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 2047
    goto :goto_0

    .line 2055
    :cond_2
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 2056
    const-string v1, "WifiDisplayController"

    const-string v2, "HDMI on and WFD feature state isn\'t on --> turn off WifiDisplay directly"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private updateSignalLevel()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x5

    const/4 v7, 0x0

    .line 2198
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getAverageScore()I

    move-result v0

    .line 2201
    .local v0, avarageScore:I
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateScoreLevel(I)V

    .line 2203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",L:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2206
    .local v4, message:Ljava/lang/String;
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_7

    .line 2209
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_1

    .line 2210
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2211
    const-string v5, "WifiDisplayController"

    const-string v6, "setWfdLevel():+2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v11}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2215
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2218
    :cond_1
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2260
    :cond_2
    :goto_0
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-lez v5, :cond_3

    .line 2261
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2262
    :cond_3
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-ge v5, v8, :cond_4

    .line 2263
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2265
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2268
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleLevelChange()V

    .line 2270
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_10

    .line 2271
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v7}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v2

    .line 2272
    .local v2, expectedBitRate:I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v10}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v1

    .line 2273
    .local v1, currentBitRate:I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v11}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 2275
    .local v3, fluencyRate:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ER:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",CR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2278
    if-eq v3, v9, :cond_5

    .line 2279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",FR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2282
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    if-eqz v5, :cond_6

    .line 2283
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2288
    :cond_6
    const-string v5, "WifiDisplayController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    .end local v1           #currentBitRate:I
    .end local v2           #expectedBitRate:I
    .end local v3           #fluencyRate:I
    :goto_1
    return-void

    .line 2220
    :cond_7
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_a

    .line 2223
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_9

    .line 2224
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 2225
    const-string v5, "WifiDisplayController"

    const-string v6, "setWfdLevel():+1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_8
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v10}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2228
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2231
    :cond_9
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2234
    :cond_a
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, -0x6

    if-gt v5, v6, :cond_d

    .line 2237
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_c

    .line 2238
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 2239
    const-string v5, "WifiDisplayController"

    const-string v6, "setWfdLevel():-2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :cond_b
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2242
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2244
    :cond_c
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2246
    :cond_d
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, -0x4

    if-gt v5, v6, :cond_2

    .line 2249
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_f

    .line 2250
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_e

    .line 2251
    const-string v5, "WifiDisplayController"

    const-string v6, "setWfdLevel():-1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_e
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v9}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2254
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2256
    :cond_f
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2292
    :cond_10
    const-string v5, "WifiDisplayController"

    const-string v6, "mRemoteDisplay is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateWfdEnableState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 521
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWfdEnableState(), mWifiDisplayOnSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWifiP2pEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_1

    .line 524
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-nez v0, :cond_0

    .line 525
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 527
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 532
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 533
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    .line 534
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 537
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 540
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dismissDialog()V

    goto :goto_0
.end method

.method private updateWfdInfo(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 547
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWfdInfo(), enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mWfdEnabling:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 550
    .local v0, wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    if-nez p1, :cond_0

    .line 552
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 553
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 555
    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfoDisabled:Z

    .line 616
    :goto_0
    return-void

    .line 559
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfoDisabled:Z

    .line 561
    invoke-virtual {v0, v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 562
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 563
    invoke-virtual {v0, v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 564
    const/16 v1, 0x1c44

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 565
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 571
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDCP Tx support? false, our wfd info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private updateWfdStatFile(I)V
    .locals 0
    .parameter "wfd_stat"

    .prologue
    .line 2085
    return-void
.end method

.method private updateWifiChannelId(ZLandroid/content/Intent;)V
    .locals 5
    .parameter "connected"
    .parameter "intent"

    .prologue
    .line 2870
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_0

    .line 2871
    const-string v2, "p2pGroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2874
    .local v1, wifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v0

    .line 2876
    .local v0, freq:I
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->getFreqId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    .line 2878
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWifiChannelId(), freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    .end local v0           #freq:I
    .end local v1           #wifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    :goto_0
    return-void

    .line 2882
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    .line 2884
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWifiChannelId(), id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiDisplayOnSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiP2pEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWfdEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWfdEnabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDiscoverPeersInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDiscoverPeersRetriesLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDesiredDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDisconnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCancelingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectedDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectionRetriesLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplayInterface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteSubmixOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteSubmixOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplaySurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBackupShowTouchVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mBackupShowTouchVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFast_NeedFastRtsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mFast_NeedFastRtsp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFast_DesiredMac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mFast_DesiredMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsNeedRotate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsNeedRotate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsConnected_OtherP2p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsConnecting_P2p_Rtsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHDMIOnSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWFDConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDRMContent_Mediaplayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayerID_Mediaplayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 475
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method

.method public requestConnect(Ljava/lang/String;)V
    .locals 6
    .parameter "address"

    .prologue
    .line 492
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v2, :cond_1

    .line 495
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 513
    :cond_0
    return-void

    .line 498
    :cond_1
    sget-boolean v2, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 499
    const-string v2, "WifiDisplayController"

    const-string v3, "mAvailableWifiDisplayPeers dump:"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 503
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-boolean v2, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 504
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0
.end method

.method public requestDisconnect()V
    .locals 3

    .prologue
    .line 516
    const-string v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 518
    return-void
.end method

.method public requestScan()V
    .locals 3

    .prologue
    .line 480
    const-string v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfoDisabled:Z

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->discoverPeers()V

    .line 489
    return-void
.end method
