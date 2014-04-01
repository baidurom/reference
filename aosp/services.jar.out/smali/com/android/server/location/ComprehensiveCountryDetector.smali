.class public Lcom/android/server/location/ComprehensiveCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "ComprehensiveCountryDetector.java"


# static fields
.field static final DEBUG:Z = true

.field private static final LOCATION_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final MAX_LENGTH_DEBUG_LOGS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ComprehensiveCountryDetector"


# instance fields
.field private mCountServiceStateChanges:I

.field private mCountry:Landroid/location/Country;

.field private mCountryFromLocation:Landroid/location/Country;

.field private final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountryAddedToLogs:Landroid/location/Country;

.field private mLastState:Landroid/telephony/ServiceState;

.field private mLastState2:Landroid/telephony/ServiceState;

.field private mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

.field protected mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

.field protected mLocationRefreshTimer:Ljava/util/Timer;

.field private mNotifyCountry:Landroid/location/Country;

.field private final mObject:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPhoneType:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopped:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalCountServiceStateChanges:I

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneType:I

    .line 77
    iput-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mNotifyCountry:Landroid/location/Country;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    .line 83
    iput-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    .line 129
    iput-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 134
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    .line 150
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/location/Country;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$408(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState2:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState2:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private addToLogs(Landroid/location/Country;)V
    .locals 2
    .parameter "country"

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    invoke-virtual {v0, p1}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    monitor-exit v1

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 277
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    .line 278
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 284
    :cond_2
    const-string v0, "ComprehensiveCountryDetector"

    invoke-virtual {p1}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized cancelLocationRefresh()V
    .locals 1

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :cond_0
    monitor-exit p0

    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private detectCountry(ZZ)Landroid/location/Country;
    .locals 3
    .parameter "notifyChange"
    .parameter "startLocationBasedDetection"

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getCountry()Landroid/location/Country;

    move-result-object v0

    .line 350
    .local v0, country:Landroid/location/Country;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    invoke-direct {v1, v2}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    :goto_0
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V

    .line 351
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    .line 352
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    return-object v1

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    goto :goto_0
.end method

.method private getCountry()Landroid/location/Country;
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, result:Landroid/location/Country;
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    const-string v1, "ComprehensiveCountryDetector"

    const-string v2, "getNetworkBasedCountry() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getNetworkBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 183
    const-string v1, "ComprehensiveCountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkBasedCountry is called result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    if-nez v0, :cond_1

    .line 187
    const-string v1, "ComprehensiveCountryDetector"

    const-string v2, "getLastKnownLocationBasedCountry() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLastKnownLocationBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    .line 191
    const-string v1, "ComprehensiveCountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastKnownLocationBasedCountry is called result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    if-nez v0, :cond_2

    .line 196
    const-string v1, "ComprehensiveCountryDetector"

    const-string v2, "getSimBasedCountry() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getSimBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_2

    .line 200
    const-string v1, "ComprehensiveCountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimBasedCountry is called result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    if-nez v0, :cond_3

    .line 206
    const-string v1, "ComprehensiveCountryDetector"

    const-string v2, "getLocaleCountry() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLocaleCountry()Landroid/location/Country;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_3

    .line 210
    const-string v1, "ComprehensiveCountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocaleCountry is called result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addToLogs(Landroid/location/Country;)V

    .line 214
    return-object v0
.end method

.method private notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V
    .locals 3
    .parameter "country"
    .parameter "detectedCountry"

    .prologue
    .line 479
    const-string v0, "ComprehensiveCountryDetector"

    const-string v1, "notifyIfCountryChanged() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    :cond_0
    const-string v1, "ComprehensiveCountryDetector"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The country was changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-object p2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mNotifyCountry:Landroid/location/Country;

    .line 484
    invoke-virtual {p0, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyListener(Landroid/location/Country;)V

    .line 486
    :cond_1
    return-void

    .line 482
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private declared-synchronized scheduleLocationRefresh()V
    .locals 4

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 514
    :goto_0
    monitor-exit p0

    return-void

    .line 498
    :cond_0
    :try_start_1
    const-string v0, "ComprehensiveCountryDetector"

    const-string v1, "start periodic location refresh timer. Interval: 86400000"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 501
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/location/ComprehensiveCountryDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startLocationBasedDetector(Landroid/location/CountryListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    monitor-exit p0

    return-void

    .line 444
    :cond_0
    :try_start_1
    const-string v0, "ComprehensiveCountryDetector"

    const-string v1, "starts LocationBasedDetector to detect Country code via Location info (e.g. GPS)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 447
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0, p1}, Lcom/android/server/location/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->detectCountry()Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopLocationBasedDetector()V
    .locals 3

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    const-string v0, "ComprehensiveCountryDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tries to stop LocationBasedDetector (current detector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->stop()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_0
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized addPhoneStateListener()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 530
    monitor-enter p0

    :try_start_0
    const-string v0, "ComprehensiveCountryDetector"

    const-string v1, "addPhoneStateListener() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneType:I

    if-ne v0, v2, :cond_0

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState:Landroid/telephony/ServiceState;

    .line 534
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 555
    const-string v0, "ComprehensiveCountryDetector"

    const-string v1, "onServiceStateChanged() is registered in the TelephonyManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState2:Landroid/telephony/ServiceState;

    .line 559
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$5;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$5;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 580
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 581
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :cond_0
    monitor-exit p0

    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;
    .locals 2

    .prologue
    .line 466
    new-instance v0, Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/CountryDetectorBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getLastKnownLocationBasedCountry()Landroid/location/Country;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object v0
.end method

.method protected getLocaleCountry()Landroid/location/Country;
    .locals 4

    .prologue
    .line 326
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 327
    .local v0, defaultLocale:Ljava/util/Locale;
    if-eqz v0, :cond_0

    .line 329
    new-instance v1, Landroid/location/Country;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    .line 333
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getNetworkBasedCountry()Landroid/location/Country;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    const/4 v0, 0x0

    .line 229
    .local v0, countryIso:Ljava/lang/String;
    iget v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneType:I

    if-ne v1, v3, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Landroid/location/Country;

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    .line 256
    :goto_0
    return-object v1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Landroid/location/Country;

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 256
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSimBasedCountry()Landroid/location/Country;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 293
    const/4 v0, 0x0

    .line 296
    .local v0, countryIso:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    new-instance v1, Landroid/location/Country;

    invoke-direct {v1, v0, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    .line 318
    :goto_0
    return-object v1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    new-instance v1, Landroid/location/Country;

    invoke-direct {v1, v0, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 318
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isAirplaneModeOff()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 471
    iget-object v1, p0, Lcom/android/server/location/CountryDetectorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isGeoCoderImplemented()Z
    .locals 1

    .prologue
    .line 616
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized removePhoneStateListener()V
    .locals 4

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_1
    monitor-exit p0

    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 5
    .parameter "country"
    .parameter "detectedCountry"
    .parameter "notifyChange"
    .parameter "startLocationBasedDetection"

    .prologue
    const/4 v4, 0x1

    .line 392
    if-eqz p3, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mNotifyCountry:Landroid/location/Country;

    invoke-direct {p0, v0, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V

    .line 398
    :cond_0
    const-string v1, "ComprehensiveCountryDetector"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLocationBasedDetection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " detectCountry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isAirplaneModeOff()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mListener="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isGeoCoderImplemnted()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v0

    if-le v0, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    const-string v0, "ComprehensiveCountryDetector"

    const-string v1, "run startLocationBasedDetector()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->startLocationBasedDetector(Landroid/location/CountryListener;)V

    .line 415
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v0

    if-lt v0, v4, :cond_5

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->scheduleLocationRefresh()V

    .line 431
    :goto_1
    return-void

    .line 398
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(source: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", countryISO: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 428
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 429
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    goto :goto_1
.end method

.method protected runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 7
    .parameter "country"
    .parameter "detectedCountry"
    .parameter "notifyChange"
    .parameter "startLocationBasedDetection"

    .prologue
    .line 360
    iget-object v6, p0, Lcom/android/server/location/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 374
    .local v0, prevListener:Landroid/location/CountryListener;
    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 375
    iget-object v1, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-nez v1, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 378
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 379
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    .line 381
    iget-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    iget-wide v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V

    .line 384
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    .line 386
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    .line 387
    iput v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "ComprehensiveCountryDetector"

    const-string v1, "Stop the detector."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 165
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 166
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 622
    .local v3, currentTime:J
    const-wide/16 v1, 0x0

    .line 623
    .local v1, currentSessionLength:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v7, "ComprehensiveCountryDetector{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-wide v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 627
    iget-wide v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long v1, v3, v7

    .line 628
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeRunning="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "totalCountServiceStateChanges="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentCountServiceStateChanges="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "totalTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v7, "countries="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget-object v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Country;

    .line 639
    .local v0, country:Landroid/location/Country;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 631
    .end local v0           #country:Landroid/location/Country;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastRunTimeLength="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    iget-wide v10, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 641
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
