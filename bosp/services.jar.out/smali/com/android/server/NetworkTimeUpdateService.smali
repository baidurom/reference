.class public Lcom/android/server/NetworkTimeUpdateService;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;,
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final BOOT_SYS_PROPERTY:Ljava/lang/String; = "persist.sys.first_time_boot"

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_GPS_TIME_SYNC_CHANGED:I = 0x4

.field private static final EVENT_NETWORK_CONNECTED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final ICS_BOOT_SYS_PROPERTY:Ljava/lang/String; = "persist.sys.boot.count"

.field private static final NOT_SET:J = -0x1L

.field private static final POLLING_INTERVAL_MS:J = 0x5265c00L

.field private static final POLLING_INTERVAL_SHORTER_MS:J = 0xea60L

.field private static POLL_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"

.field private static final TIME_ERROR_THRESHOLD_MS:I = 0x1388

.field private static final TRY_AGAIN_TIMES_MAX:I = 0x3

.field private static mDefaultYear:I

.field private static mIsOverMobile:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mGpsHandler:Landroid/os/Handler;

.field private mGpsThread:Landroid/os/HandlerThread;

.field private mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

.field private mGpsTimerThread:Ljava/lang/Thread;

.field private mGpsToastHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIsGpsTimeSyncRunning:Z

.field private mLastNtpFetchTime:J

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private mNitzZoneSetTime:J

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private mThread:Landroid/os/HandlerThread;

.field private mTime:Landroid/util/TrustedTime;

.field private mTryAgainCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    const/16 v0, 0x7dc

    sput v0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    .line 86
    sput-boolean v1, Lcom/android/server/NetworkTimeUpdateService;->mIsOverMobile:Z

    .line 100
    sput v1, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 105
    iput-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    .line 121
    iput-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 300
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 314
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$3;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$3;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    iput-boolean v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    .line 478
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$5;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$5;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;

    .line 485
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$6;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$6;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 128
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    .line 130
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.NetworkTimeUpdateService.action.POLL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v0, pollIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkTimeUpdateService;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    return-wide p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/server/NetworkTimeUpdateService;->mIsOverMobile:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/NetworkTimeUpdateService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkTimeUpdateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->getGpsTimeSyncState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/NetworkTimeUpdateService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    return p1
.end method

.method private getGpsTimeSyncState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 406
    :cond_0
    :goto_0
    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 295
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPollNetworkTime(I)V
    .locals 10
    .parameter "event"

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v6

    if-nez v6, :cond_0

    .line 277
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 225
    .local v4, refTime:J
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 226
    const-wide/32 v6, 0x5265c00

    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 230
    .local v0, currentTime:J
    const-string v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "System time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const/4 v6, 0x1

    if-ne p1, v6, :cond_7

    .line 234
    :cond_2
    const-string v6, "NetworkTimeUpdateService"

    const-string v7, "Before Ntp fetch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 238
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 242
    :cond_3
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-gez v6, :cond_9

    .line 243
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v2

    .line 244
    .local v2, ntp:J
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 247
    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 250
    :cond_4
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    .line 252
    const-string v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For initial setup, rtc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_5
    const-string v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ntp time to be set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 257
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 262
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 276
    .end local v2           #ntp:J
    :cond_7
    const-wide/32 v6, 0x5265c00

    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0

    .line 260
    .restart local v2       #ntp:J
    :cond_8
    const-string v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ntp time is close enough = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    .end local v2           #ntp:J
    :cond_9
    iget v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 266
    iget v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    const/4 v7, 0x3

    if-gt v6, v7, :cond_a

    .line 267
    const-wide/32 v6, 0xea60

    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0

    .line 270
    :cond_a
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 271
    const-wide/32 v6, 0x5265c00

    invoke-direct {p0, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0
.end method

.method private registerForAlarms()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method private registerForConnectivityIntents()V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .parameter "interval"

    .prologue
    .line 285
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 287
    .local v2, now:J
    add-long v0, v2, p1

    .line 288
    .local v0, next:J
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 289
    return-void
.end method


# virtual methods
.method public onGpsTimeChanged(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 434
    if-eqz p1, :cond_1

    .line 435
    const v0, 0x2bf20

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const v2, 0x20500ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->startUsingGpsWithTimeout(ILjava/lang/String;)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public startUsingGpsWithTimeout(ILjava/lang/String;)V
    .locals 6
    .parameter "milliseconds"
    .parameter "timeoutMsg"

    .prologue
    const/4 v1, 0x1

    .line 446
    iget-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    if-ne v0, v1, :cond_0

    .line 447
    const-string v0, "NetworkTimeUpdateService"

    const-string v1, "WARNING: Gps Time Sync is already run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return-void

    .line 450
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    .line 453
    const-string v0, "NetworkTimeUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start using GPS for GPS time sync timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeoutMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 455
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 456
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/NetworkTimeUpdateService$4;-><init>(Lcom/android/server/NetworkTimeUpdateService;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    .line 474
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 138
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    .line 139
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForConnectivityIntents()V

    .line 141
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "NetworkTimeUpdateService"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mThread:Landroid/os/HandlerThread;

    .line 142
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance v9, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 145
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 147
    new-instance v9, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v10, v7}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    .line 148
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 151
    const-string v9, "NetworkTimeUpdateService"

    const-string v10, "add GPS time sync handler and looper"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "NetworkTimeUpdateService"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v9, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsHandler:Landroid/os/Handler;

    .line 156
    new-instance v9, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    .line 157
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    iget-object v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;->observe(Landroid/content/Context;)V

    .line 161
    const-string v9, "persist.sys.boot.count"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, icsString:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v4, v8

    .line 163
    .local v4, isIcsVersion:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 193
    :cond_0
    :goto_1
    return-void

    .end local v4           #isIcsVersion:Z
    :cond_1
    move v4, v7

    .line 162
    goto :goto_0

    .line 167
    .restart local v4       #isIcsVersion:Z
    :cond_2
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x20b0005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    .line 168
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x20c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/NetworkTimeUpdateService;->mIsOverMobile:Z

    .line 170
    const-string v9, "persist.sys.first_time_boot"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, tempString:Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v3, v7

    .line 172
    .local v3, isFirstBoot:Z
    :goto_2
    if-eqz v3, :cond_0

    .line 173
    const-string v9, "ro.kernel.qemu"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    const-string v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v2, v7

    .line 175
    .local v2, isEmulator:Z
    :goto_3
    if-eqz v2, :cond_5

    .line 176
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEmulator:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #isEmulator:Z
    .end local v3           #isFirstBoot:Z
    :cond_3
    move v3, v8

    .line 171
    goto :goto_2

    .restart local v3       #isFirstBoot:Z
    :cond_4
    move v2, v8

    .line 174
    goto :goto_3

    .line 180
    .restart local v2       #isEmulator:Z
    :cond_5
    const-string v9, "vold.decrypt"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, decryptState:Ljava/lang/String;
    const-string v9, "NetworkTimeUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decryptState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v9, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "trigger_restart_framework"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 183
    :cond_6
    new-instance v6, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 184
    .local v6, today:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 185
    const-string v9, "NetworkTimeUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "First boot:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with date:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget v9, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/text/format/Time;->set(III)V

    .line 187
    const-string v7, "NetworkTimeUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set the year to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v7, "persist.sys.first_time_boot"

    const-string v9, "false"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    goto/16 :goto_1
.end method
