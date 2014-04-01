.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$4;,
        Lcom/android/server/WifiService$ConnectTypeObserver;,
        Lcom/android/server/WifiService$NotificationEnabledSettingObserver;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/WifiService$AsyncServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final DBG:Z = true

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final ICON_NETWORKS_AVAILABLE:I = #drawable@stat_notify_wifi_in_range#t

.field private static final IDLE_REQUEST:I = 0x0

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x0

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WAPI_CERT:I = 0x5

.field static final SECURITY_WAPI_PSK:I = 0x4

.field static final SECURITY_WEP:I = 0x1

.field static final SECURITY_WPA2_PSK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2

.field private static final mWifiSettingsClassName:Ljava/lang/String; = "com.android.settings.Settings$WifiSettingsActivity"

.field private static final sSuspendNotificationDuration:J = 0x36ee80L


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private OPTR:Ljava/lang/String;

.field private mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

.field private mAutoConnect:Z

.field private final mBackgroundScanSupported:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCellToWiFiPolicy:I

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/AsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectPolicy:I

.field private mConnectTypeObserver:Lcom/android/server/WifiService$ConnectTypeObserver;

.field private mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDeviceIdle:Z

.field private mEmergencyCallbackMode:Z

.field private mEnableTrafficStatsPoll:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxPkts:J

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mScreenOff:Z

.field private mSuspendNotificationTime:J

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J

.field private mWifiEnabled:Z

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 384
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 105
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    .line 111
    new-instance v3, Lcom/android/server/WifiService$LockList;

    invoke-direct {v3, p0, v8}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 127
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    .line 128
    iput v7, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    .line 161
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    .line 170
    new-instance v3, Landroid/net/NetworkInfo;

    const-string v4, "WIFI"

    const-string v5, ""

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    .line 362
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    iput-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 377
    iput v7, p0, Lcom/android/server/WifiService;->mConnectPolicy:I

    .line 378
    iput v7, p0, Lcom/android/server/WifiService;->mCellToWiFiPolicy:I

    .line 379
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/WifiService;->mSuspendNotificationTime:J

    .line 381
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mAutoConnect:Z

    .line 999
    new-instance v3, Lcom/android/server/WifiService$3;

    invoke-direct {v3, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 385
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 387
    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 389
    new-instance v3, Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 390
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 391
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 393
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 394
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v1, v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 395
    .local v1, idleIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 397
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WifiService$1;

    invoke-direct {v4, p0}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 415
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WifiService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WifiService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 451
    .local v2, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 452
    new-instance v3, Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/WifiService$AsyncServiceHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    .line 453
    new-instance v3, Lcom/android/server/WifiService$WifiStateMachineHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_repeat_delay"

    const/16 v5, 0x384

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 458
    new-instance v3, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    .line 459
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    invoke-virtual {v3}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->register()V

    .line 461
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #bool@config_wifi_background_scan_support#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_connect_type"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/WifiService;->mConnectPolicy:I

    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_connect_type"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/WifiService;->mCellToWiFiPolicy:I

    .line 467
    const-string v3, "ro.operator.optr"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WifiService;->OPTR:Ljava/lang/String;

    .line 468
    new-instance v3, Lcom/android/server/WifiService$ConnectTypeObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/WifiService$ConnectTypeObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mConnectTypeObserver:Lcom/android/server/WifiService$ConnectTypeObserver;

    .line 470
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/WifiService;->resetNotification()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkAndSetNotification()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/WifiService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->OPTR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$408(Lcom/android/server/WifiService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mCellToWiFiPolicy:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/server/WifiService;->mCellToWiFiPolicy:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/WifiService;->mConnectPolicy:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/server/WifiService;->mConnectPolicy:I

    return p1
.end method

.method static synthetic access$4502(Lcom/android/server/WifiService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/server/WifiService;->mSuspendNotificationTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/WifiService;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 6
    .parameter "wifiLock"

    .prologue
    .line 1409
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$3700(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 1413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1415
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 1416
    iget v3, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 1431
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1433
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    const/4 v3, 0x1

    .line 1438
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1436
    return v3

    .line 1418
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 1421
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1438
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1425
    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkAndSetNotification()V
    .locals 36

    .prologue
    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v29

    .line 1692
    .local v29, state:Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v27

    .line 1693
    .local v27, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v23

    .line 1694
    .local v23, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v27, :cond_7

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->OPTR:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "OP01"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_7

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->syncGetRssiWeakNetworks()Ljava/util/List;

    move-result-object v25

    .line 1699
    .local v25, rssiWeakNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v23, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_7

    .line 1700
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1701
    .local v10, enableNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiConfiguration;

    .line 1702
    .local v21, network:Landroid/net/wifi/WifiConfiguration;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/ScanResult;

    .line 1705
    .local v28, scanresult:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v32

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 1708
    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v32, v0

    const/16 v33, -0x55

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_3

    .line 1709
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/wifi/WifiConfiguration;

    .line 1710
    .local v31, weakNetwork:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 1711
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Rssi > -85, enabling network "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WifiService;->enableNetwork(IZ)Z

    .line 1713
    move-object/from16 v0, v31

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1717
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v31           #weakNetwork:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Rssi of network "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " is smaller than "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, -0x55

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1722
    .end local v21           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v28           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_5

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 1725
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 1726
    .local v9, enableNetwork:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1728
    .end local v9           #enableNetwork:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncSetRssiWeakNetwork(Ljava/util/List;)V

    .line 1735
    .end local v10           #enableNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v25           #rssiWeakNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_7
    sget-object v32, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_8

    sget-object v32, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1d

    .line 1738
    :cond_8
    if-eqz v27, :cond_1d

    .line 1739
    const/16 v24, 0x0

    .line 1740
    .local v24, numOpenNetworks:I
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v32

    add-int/lit8 v14, v32, -0x1

    .local v14, i:I
    :goto_3
    if-ltz v14, :cond_a

    .line 1741
    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/ScanResult;

    .line 1745
    .local v26, scanResult:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "[ESS]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 1747
    add-int/lit8 v24, v24, 0x1

    .line 1740
    :cond_9
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 1751
    .end local v26           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_a
    const/16 v20, 0x0

    .line 1752
    .local v20, isConnecting:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->syncGetConnectingNetworkId(Lcom/android/internal/util/AsyncChannel;)I

    move-result v22

    .line 1755
    .local v22, networkId:I
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "OPTR="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->OPTR:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", mConnectPolicy="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mConnectPolicy:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", mCellToWiFiPolicy="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mCellToWiFiPolicy:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->OPTR:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "OP01"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 1757
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WifiService;->mAutoConnect:Z

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "connectivity"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 1759
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 1760
    .local v18, info:Landroid/net/NetworkInfo;
    if-nez v18, :cond_e

    .line 1761
    const-string v32, "WifiService"

    const-string v33, "No active network"

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :goto_4
    const/4 v13, 0x0

    .line 1767
    .local v13, highestPriorityNetworkSSID:Ljava/lang/String;
    const/4 v11, -0x1

    .line 1768
    .local v11, highestPriority:I
    const/4 v12, -0x1

    .line 1770
    .local v12, highestPriorityNetworkId:I
    if-eqz v23, :cond_f

    .line 1771
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiConfiguration;

    .line 1772
    .restart local v21       #network:Landroid/net/wifi/WifiConfiguration;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/ScanResult;

    .line 1775
    .restart local v28       #scanresult:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v32

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    .line 1779
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v0, v11, :cond_d

    .line 1780
    move-object/from16 v0, v21

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1781
    move-object/from16 v0, v21

    iget v12, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1782
    move-object/from16 v0, v21

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1784
    :cond_d
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1785
    const/16 v20, 0x1

    goto/16 :goto_5

    .line 1763
    .end local v11           #highestPriority:I
    .end local v12           #highestPriorityNetworkId:I
    .end local v13           #highestPriorityNetworkSSID:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v28           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_e
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Active network type:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1791
    .restart local v11       #highestPriority:I
    .restart local v12       #highestPriorityNetworkId:I
    .restart local v13       #highestPriorityNetworkSSID:Ljava/lang/String;
    :cond_f
    if-nez v20, :cond_10

    .line 1792
    if-eqz v18, :cond_17

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getType()I

    move-result v32

    if-nez v32, :cond_17

    .line 1793
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "highestPriorityNetworkId="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", highestPriorityNetworkSSID="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "currentTimeMillis="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", mSuspendNotificationTime="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mSuspendNotificationTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mConnectPolicy:I

    move/from16 v32, v0

    if-nez v32, :cond_13

    .line 1796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mCellToWiFiPolicy:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 1797
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v12, v0, :cond_10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mSuspendNotificationTime:J

    move-wide/from16 v34, v0

    sub-long v32, v32, v34

    const-wide/32 v34, 0x36ee80

    cmp-long v32, v32, v34

    if-lez v32, :cond_10

    .line 1799
    new-instance v19, Landroid/content/Intent;

    const-string v32, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v19, intent:Landroid/content/Intent;
    const/high16 v32, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1801
    const-string v32, "ssid"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    const-string v32, "network_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1843
    .end local v19           #intent:Landroid/content/Intent;
    :cond_10
    :goto_6
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mAutoConnect:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mAutoConnect:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mAutoConnect:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    .line 1894
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v11           #highestPriority:I
    .end local v12           #highestPriorityNetworkId:I
    .end local v13           #highestPriorityNetworkSSID:Ljava/lang/String;
    .end local v14           #i:I
    .end local v18           #info:Landroid/net/NetworkInfo;
    .end local v20           #isConnecting:Z
    .end local v22           #networkId:I
    .end local v24           #numOpenNetworks:I
    :cond_11
    :goto_7
    return-void

    .line 1805
    .restart local v7       #cm:Landroid/net/ConnectivityManager;
    .restart local v11       #highestPriority:I
    .restart local v12       #highestPriorityNetworkId:I
    .restart local v13       #highestPriorityNetworkSSID:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v18       #info:Landroid/net/NetworkInfo;
    .restart local v20       #isConnecting:Z
    .restart local v22       #networkId:I
    .restart local v24       #numOpenNetworks:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mCellToWiFiPolicy:I

    move/from16 v32, v0

    if-nez v32, :cond_10

    .line 1806
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v12, v0, :cond_10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 1807
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WifiService;->enableAllNetworks()V

    goto :goto_6

    .line 1811
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "activity"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 1812
    .local v5, am:Landroid/app/ActivityManager;
    const/4 v8, 0x0

    .line 1813
    .local v8, cn:Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 1814
    .local v6, classname:Ljava/lang/String;
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v32

    if-eqz v32, :cond_14

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_14

    .line 1815
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v32

    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1817
    :cond_14
    if-eqz v8, :cond_16

    .line 1818
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 1819
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Class Name:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mCellToWiFiPolicy:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    if-eqz v6, :cond_15

    const-string v32, "com.android.settings.Settings$WifiSettingsActivity"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 1825
    :cond_15
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v12, v0, :cond_10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mSuspendNotificationTime:J

    move-wide/from16 v34, v0

    sub-long v32, v32, v34

    const-wide/32 v34, 0x36ee80

    cmp-long v32, v32, v34

    if-lez v32, :cond_10

    .line 1827
    new-instance v19, Landroid/content/Intent;

    const-string v32, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1828
    .restart local v19       #intent:Landroid/content/Intent;
    const/high16 v32, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1829
    const-string v32, "ssid"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    const-string v32, "network_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1821
    .end local v19           #intent:Landroid/content/Intent;
    :cond_16
    const-string v32, "WifiService"

    const-string v33, "ComponentName is null"

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1836
    .end local v5           #am:Landroid/app/ActivityManager;
    .end local v6           #classname:Ljava/lang/String;
    .end local v8           #cn:Landroid/content/ComponentName;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mConnectPolicy:I

    move/from16 v32, v0

    if-nez v32, :cond_10

    .line 1837
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v12, v0, :cond_10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 1838
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WifiService;->enableAllNetworks()V

    goto/16 :goto_6

    .line 1850
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v11           #highestPriority:I
    .end local v12           #highestPriorityNetworkId:I
    .end local v13           #highestPriorityNetworkSSID:Ljava/lang/String;
    .end local v18           #info:Landroid/net/NetworkInfo;
    :cond_18
    if-eqz v23, :cond_1b

    .line 1852
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_19
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiConfiguration;

    .line 1853
    .restart local v21       #network:Landroid/net/wifi/WifiConfiguration;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/ScanResult;

    .line 1856
    .restart local v28       #scanresult:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1a

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1a

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v32

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 1860
    const/16 v20, 0x1

    .line 1868
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v28           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_1b
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Open network num:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    if-lez v24, :cond_1d

    .line 1870
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    if-ltz v32, :cond_11

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v30

    .line 1880
    .local v30, supplicantState:Landroid/net/wifi/SupplicantState;
    const-string v32, "WifiService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Supplicant state is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " when interpret scan results, isConnecting="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    sget-object v32, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v32

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_1c

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v32

    sget-object v33, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_11

    .line 1882
    :cond_1c
    if-nez v20, :cond_11

    .line 1883
    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v24

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto/16 :goto_7

    .line 1893
    .end local v14           #i:I
    .end local v20           #isConnecting:Z
    .end local v22           #networkId:I
    .end local v24           #numOpenNetworks:I
    .end local v30           #supplicantState:Landroid/net/wifi/SupplicantState;
    :cond_1d
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto/16 :goto_7
.end method

.method private enableAllNetworks()V
    .locals 8

    .prologue
    .line 2130
    iget-object v5, p0, Lcom/android/server/WifiService;->OPTR:Ljava/lang/String;

    const-string v6, "OP01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2131
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->isNetworksDisabledDuringConnect()Z

    move-result v1

    .line 2132
    .local v1, isConnecting:Z
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableAllNetworks, isConnecting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    if-nez v1, :cond_2

    .line 2134
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2135
    .local v3, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 2136
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_2

    .line 2137
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2138
    .local v2, network:Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_0

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-eq v5, v6, :cond_0

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-nez v5, :cond_0

    .line 2140
    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WifiService;->enableNetwork(IZ)Z

    .line 2141
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WifiService;->mAutoConnect:Z

    goto :goto_0

    .line 2144
    .end local v2           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mAutoConnect:Z

    if-eqz v5, :cond_2

    .line 2145
    invoke-virtual {p0}, Lcom/android/server/WifiService;->reconnect()V

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/WifiService;->saveConfiguration()Z

    .line 2151
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isConnecting:Z
    .end local v3           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_2
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x0

    .line 1648
    iget-object v1, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v1, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 1655
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1656
    return-void

    .line 1652
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 520
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 523
    :goto_0
    return v2

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 2113
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    const/4 v0, 0x4

    .line 2126
    :goto_0
    return v0

    .line 2115
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2116
    const/4 v0, 0x5

    goto :goto_0

    .line 2117
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2118
    const/4 v0, 0x1

    goto :goto_0

    .line 2119
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2120
    const/4 v0, 0x2

    goto :goto_0

    .line 2121
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2122
    const/4 v0, 0x3

    goto :goto_0

    .line 2123
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA2-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2124
    const/4 v0, 0x6

    goto :goto_0

    .line 2126
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 2090
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2109
    :goto_0
    return v0

    .line 2093
    :cond_0
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    .line 2095
    goto :goto_0

    .line 2097
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 2098
    goto :goto_0

    .line 2100
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 2101
    goto :goto_0

    .line 2103
    :cond_4
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_5

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    move v0, v3

    .line 2104
    goto :goto_0

    .line 2106
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2107
    const/4 v0, 0x6

    goto :goto_0

    .line 2109
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1225
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1385
    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1394
    :goto_0
    return-void

    .line 1388
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1391
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1397
    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1406
    :goto_0
    return-void

    .line 1400
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1403
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyOnDataActivity()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 1660
    iget-wide v5, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .local v5, preTxPkts:J
    iget-wide v3, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 1661
    .local v3, preRxPkts:J
    const/4 v1, 0x0

    .line 1663
    .local v1, dataActivity:I
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .line 1664
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 1666
    cmp-long v11, v5, v13

    if-gtz v11, :cond_0

    cmp-long v11, v3, v13

    if-lez v11, :cond_3

    .line 1667
    :cond_0
    iget-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    sub-long v9, v11, v5

    .line 1668
    .local v9, sent:J
    iget-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    sub-long v7, v11, v3

    .line 1669
    .local v7, received:J
    cmp-long v11, v9, v13

    if-lez v11, :cond_1

    .line 1670
    or-int/lit8 v1, v1, 0x2

    .line 1672
    :cond_1
    cmp-long v11, v7, v13

    if-lez v11, :cond_2

    .line 1673
    or-int/lit8 v1, v1, 0x1

    .line 1676
    :cond_2
    iget v11, p0, Lcom/android/server/WifiService;->mDataActivity:I

    if-eq v1, v11, :cond_3

    iget-boolean v11, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v11, :cond_3

    .line 1677
    iput v1, p0, Lcom/android/server/WifiService;->mDataActivity:I

    .line 1678
    iget-object v11, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 1679
    .local v0, client:Lcom/android/internal/util/AsyncChannel;
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/server/WifiService;->mDataActivity:I

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_0

    .line 1683
    .end local v0           #client:Lcom/android/internal/util/AsyncChannel;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #received:J
    .end local v9           #sent:J
    :cond_3
    return-void
.end method

.method private persistWifiState(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 536
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 537
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 538
    .local v0, airplane:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 539
    if-eqz v0, :cond_1

    .line 540
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 552
    :goto_1
    const-string v2, "wifi_on"

    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    return-void

    .end local v0           #airplane:Z
    :cond_0
    move v0, v3

    .line 537
    goto :goto_0

    .line 542
    .restart local v0       #airplane:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 545
    :cond_2
    if-eqz v0, :cond_3

    .line 546
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 548
    :cond_3
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 1194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1195
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1196
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1197
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1198
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1199
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1200
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1201
    const-string v1, "android.net.wifi.WIFI_CLEAR_NOTIFICATION_SHOW_FLAG_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1202
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1203
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "lock"

    .prologue
    .line 1479
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$3900(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 1481
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1485
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1487
    .local v1, ident:J
    if-eqz v0, :cond_0

    .line 1488
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 1489
    iget v4, v3, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 1503
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1510
    return v0

    .line 1483
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1491
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_1

    .line 1505
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1494
    :pswitch_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1507
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1497
    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 1616
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 1618
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    .line 1619
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 1621
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1622
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 1625
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1627
    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1632
    return-void

    .line 1630
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1628
    :catch_0
    move-exception v2

    .line 1630
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private declared-synchronized reportStartWorkSource()V
    .locals 3

    .prologue
    .line 1139
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 1140
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    .line 1141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$2700(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$2700(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 1141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1145
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    monitor-exit p0

    return-void

    .line 1139
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1901
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 1902
    iput v2, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    .line 1903
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    .line 1904
    return-void
.end method

.method private setDeviceIdleAndUpdateWifi(Z)V
    .locals 0
    .parameter "deviceIdle"

    .prologue
    .line 1133
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    .line 1134
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1135
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    .line 1136
    return-void
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 10
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const/4 v9, 0x0

    const v8, #drawable@stat_notify_wifi_in_range#t

    .line 1924
    if-eqz p1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-nez v4, :cond_1

    .line 1975
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    if-nez v4, :cond_2

    if-eqz p3, :cond_0

    .line 1931
    :cond_2
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1935
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_6

    .line 1938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 1939
    const-string v4, "WifiService"

    const-string v5, "Not enough time has passed to show the notification again"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1943
    :cond_3
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-nez v4, :cond_4

    .line 1945
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    .line 1946
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 1947
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput v8, v4, Landroid/app/Notification;->icon:I

    .line 1948
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1949
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1950
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "notification"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1951
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1954
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #plurals@wifi_available#t

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1956
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #plurals@wifi_available_detailed#t

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1958
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1959
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1961
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 1963
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    if-nez v4, :cond_5

    .line 1964
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1968
    :goto_1
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pop up notification, mNotification.sound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1974
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v3           #title:Ljava/lang/CharSequence;
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    goto/16 :goto_0

    .line 1966
    .restart local v0       #details:Ljava/lang/CharSequence;
    .restart local v3       #title:Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 1971
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v3           #title:Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2
.end method

.method private shouldWifiBeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 529
    goto :goto_0

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 505
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 506
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 508
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 509
    if-ne v1, v2, :cond_0

    .line 510
    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1

    .line 511
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateWifiState()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1149
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$2800(Lcom/android/server/WifiService$LockList;)Z

    move-result v0

    .line 1150
    .local v0, lockHeld:Z
    const/4 v1, 0x1

    .line 1154
    .local v1, strongestLockMode:I
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    if-eqz v6, :cond_4

    .line 1155
    const/4 v3, 0x0

    .line 1160
    .local v3, wifiShouldBeStarted:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1161
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$2900(Lcom/android/server/WifiService$LockList;)I

    move-result v1

    .line 1164
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v6, :cond_1

    if-ne v1, v9, :cond_1

    .line 1165
    const/4 v1, 0x1

    .line 1169
    :cond_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1170
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1173
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v2

    .line 1174
    .local v2, wifiShouldBeEnabled:Z
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWifiState, wifiShouldBeEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", wifiShouldBeStarted:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    if-eqz v2, :cond_9

    .line 1176
    if-eqz v3, :cond_8

    .line 1177
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1178
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1179
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne v1, v9, :cond_7

    move v6, v5

    :goto_1
    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiStateMachine;->setScanOnlyMode(Z)V

    .line 1181
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v6, v5, v7}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 1182
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v7, 0x3

    if-ne v1, v7, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    .line 1184
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 1191
    :goto_2
    return-void

    .line 1157
    .end local v2           #wifiShouldBeEnabled:Z
    .end local v3           #wifiShouldBeStarted:Z
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v6, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v3, v5

    .restart local v3       #wifiShouldBeStarted:Z
    :goto_3
    goto :goto_0

    .end local v3           #wifiShouldBeStarted:Z
    :cond_6
    move v3, v4

    goto :goto_3

    .restart local v2       #wifiShouldBeEnabled:Z
    .restart local v3       #wifiShouldBeStarted:Z
    :cond_7
    move v6, v4

    .line 1179
    goto :goto_1

    .line 1186
    :cond_8
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v5, v4, v6}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    goto :goto_2

    .line 1189
    :cond_9
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 1576
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 1578
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 1579
    :try_start_0
    iget v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 1580
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 1586
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1589
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1591
    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1594
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    return-void

    .line 1586
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1594
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1592
    :catch_0
    move-exception v2

    .line 1594
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1361
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1365
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1369
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1370
    const/4 p4, 0x0

    .line 1372
    :cond_1
    if-eqz p4, :cond_2

    .line 1373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 1375
    :cond_2
    if-nez p4, :cond_3

    .line 1376
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 1378
    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 1379
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v2

    .line 1380
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1381
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 745
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 749
    :goto_0
    return v0

    .line 748
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 962
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 964
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 479
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    .line 480
    .local v0, isAirplaneModeOn:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiState()I

    move-result v1

    .line 481
    .local v1, persistedWifiState:I
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAirplaneModeOn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getPersistedWifiState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v4, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 483
    iget-object v4, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 485
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 488
    .local v2, wifiEnabled:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/WifiService;->OPTR:Ljava/lang/String;

    const-string v5, "OP01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    const-string v4, "WifiService"

    const-string v5, "Don\'t enable wifi when airplane mode is on for CMCC"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p0, v3}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 499
    :goto_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 502
    return-void

    .end local v2           #wifiEnabled:Z
    :cond_1
    move v2, v3

    .line 485
    goto :goto_0

    .line 494
    .restart local v2       #wifiEnabled:Z
    :cond_2
    const-string v4, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiService starting up with Wi-Fi "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_3

    const-string v3, "enabled"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    goto :goto_1

    .line 494
    :cond_3
    const-string v3, "disabled"

    goto :goto_2
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 974
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 975
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 795
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 799
    :goto_0
    return v0

    .line 798
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 710
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 711
    return-void
.end method

.method public doCTIATestGet(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2236
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDoCTIATestGet(Lcom/android/internal/util/AsyncChannel;I)Ljava/lang/String;

    move-result-object v0

    .line 2240
    :goto_0
    return-object v0

    .line 2239
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCTIATestOff()Z
    .locals 2

    .prologue
    .line 2195
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2196
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncDoCTIATestOff(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 2200
    :goto_0
    return v0

    .line 2199
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCTIATestOn()Z
    .locals 2

    .prologue
    .line 2185
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2186
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncDoCTIATestOn(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 2190
    :goto_0
    return v0

    .line 2189
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCTIATestPower(I)Z
    .locals 2
    .parameter "powerMode"

    .prologue
    .line 2215
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2216
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDoCTIATestPower(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 2220
    :goto_0
    return v0

    .line 2219
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCTIATestRate(I)Z
    .locals 2
    .parameter "rate"

    .prologue
    .line 2205
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2206
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDoCTIATestRate(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 2210
    :goto_0
    return v0

    .line 2209
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCTIATestSet(II)Z
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 2225
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2226
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncDoCTIATestSet(Lcom/android/internal/util/AsyncChannel;II)Z

    move-result v0

    .line 2230
    :goto_0
    return v0

    .line 2229
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doWpsAbort()Z
    .locals 2

    .prologue
    .line 2175
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2176
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncDoWpsAbort(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 2180
    :goto_0
    return v0

    .line 2179
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doWpsPbc(Ljava/lang/String;)Z
    .locals 2
    .parameter "bssid"

    .prologue
    .line 2155
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2156
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDoWpsPbc(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Z

    move-result v0

    .line 2160
    :goto_0
    return v0

    .line 2159
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doWpsPin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bssid"

    .prologue
    .line 2165
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2166
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDoWpsPin(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2170
    :goto_0
    return-object v0

    .line 2169
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    .line 1231
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    :goto_0
    return-void

    .line 1238
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1244
    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1246
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1247
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 1249
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1250
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1252
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v4, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v5, v7

    const/4 v3, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v6, 0x4

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_2
    aput-object v3, v5, v6

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 1260
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1268
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$3000(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 1271
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1272
    const-string v3, "WifiWatchdogStateMachine dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 778
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 783
    :goto_0
    return v0

    .line 782
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x0

    goto :goto_0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 1353
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1358
    :goto_0
    return-void

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAccessPointPreferredChannels()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 904
    const/4 v2, 0x0

    .line 905
    .local v2, preferredChannels:[Ljava/lang/String;
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 906
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 907
    .local v3, service:Landroid/os/INetworkManagementService;
    if-eqz v3, :cond_0

    .line 909
    :try_start_0
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getSoftApPreferredChannel()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 914
    :cond_0
    :goto_0
    return-object v2

    .line 910
    :catch_0
    move-exception v1

    .line 911
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error get allowed channel list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 996
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 735
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 813
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncUpdateRssi(Lcom/android/internal/util/AsyncChannel;)V

    .line 818
    :goto_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0

    .line 816
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 925
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 887
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 987
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 988
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 828
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 691
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 682
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 658
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public hasConnectableAP()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2059
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2061
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return v6

    .line 2064
    :cond_1
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 2065
    .local v4, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2066
    .local v3, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 2067
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2068
    .local v2, network:Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 2071
    .local v5, scanresult:Landroid/net/wifi/ScanResult;
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v9

    if-ne v8, v9, :cond_3

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v8, v7, :cond_3

    move v6, v7

    .line 2075
    goto :goto_0

    .line 2080
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_4
    iget v8, p0, Lcom/android/server/WifiService;->mConnectPolicy:I

    if-nez v8, :cond_0

    .line 2081
    invoke-direct {p0}, Lcom/android/server/WifiService;->enableAllNetworks()V

    .line 2082
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    goto :goto_0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 1565
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1567
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    monitor-exit v1

    .line 1573
    :goto_0
    return-void

    .line 1570
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 1572
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_wifi_dual_band_support#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 1635
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1637
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1638
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 562
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 566
    :goto_0
    return v0

    .line 565
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 726
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 727
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 718
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 719
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 1599
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 1601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1602
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 1603
    :try_start_0
    iget v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 1604
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1605
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1606
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 1607
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1608
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 1605
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1611
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v5

    .line 1612
    return-void

    .line 1611
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 1472
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 761
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 765
    :goto_0
    return v0

    .line 764
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAPPriority()Z
    .locals 3

    .prologue
    .line 2046
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2047
    const/4 v0, 0x0

    .line 2049
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 2050
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveAPPriority(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 2055
    :goto_0
    return v0

    .line 2052
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 838
    const/4 v0, 0x1

    .line 839
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 840
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 844
    :goto_0
    return v1

    .line 843
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 858
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 861
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 862
    return-void
.end method

.method public setFrequencyBand(IZ)V
    .locals 3
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 875
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isDualBandSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 876
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set frequency band to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    goto :goto_0
.end method

.method public setTxPower(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 2255
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2256
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2257
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetTxPower(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 2260
    :goto_0
    return v0

    .line 2259
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTxPowerEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 2245
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2246
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetTxPowerEnabled(Lcom/android/internal/util/AsyncChannel;Z)Z

    move-result v0

    .line 2250
    :goto_0
    return v0

    .line 2249
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 700
    if-nez p1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 669
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 670
    return-void
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 602
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 604
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 605
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    const-string v3, "wifi_state"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    const-string v3, "previous_wifi_state"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 614
    :cond_1
    :try_start_1
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invoking mWifiStateMachine.setWifiEnabled, enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-eqz p1, :cond_2

    .line 618
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 621
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 629
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    if-eq p1, v3, :cond_3

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 631
    .local v0, ident:J
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    .line 632
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    .end local v0           #ident:J
    :cond_3
    if-eqz p1, :cond_4

    .line 636
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    if-nez v3, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    .line 638
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 640
    :cond_4
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    if-eqz v3, :cond_0

    .line 641
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 642
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startScan(Z)V
    .locals 1
    .parameter "forceActive"

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 575
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 576
    return-void
.end method

.method public startWifi()V
    .locals 3

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 939
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 940
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 941
    return-void
.end method

.method public stopWifi()V
    .locals 3

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 953
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 954
    return-void
.end method

.method public suspendNotification()V
    .locals 4

    .prologue
    .line 2036
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2038
    iget-object v0, p0, Lcom/android/server/WifiService;->OPTR:Ljava/lang/String;

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mSuspendNotificationTime:J

    .line 2040
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspendNotification, mSuspendNotificationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiService;->mSuspendNotificationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_0
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1444
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1445
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1446
    const/4 p2, 0x0

    .line 1448
    :cond_0
    if-eqz p2, :cond_1

    .line 1449
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 1451
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1453
    .local v0, ident:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/WifiService$LockList;->access$3800(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 1455
    .local v2, index:I
    if-gez v2, :cond_2

    .line 1456
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1462
    .end local v2           #index:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1463
    :catch_0
    move-exception v6

    .line 1465
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1467
    return-void

    .line 1458
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$2700(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 1459
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 1460
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1461
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 1462
    monitor-exit v7

    goto :goto_0

    .line 1460
    :cond_3
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1465
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
