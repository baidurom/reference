.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationProviderProxy$1;,
        Lcom/android/server/location/LocationProviderProxy$Connection;
    }
.end annotation


# static fields
.field private static final NETWORKLOCATION_BINDSERVICENAME:Ljava/lang/String; = "NetworkLocationBindServiceName"

.field private static final NETWORKLOCATION_BINDSERVICESUCESS:Ljava/lang/String; = "NetworkLocationBindServiceSucess"

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsBindNetworkSucess:Z

.field private mLocationTracking:Z

.field private mMinTime:J

.field private mMinTimeSource:Landroid/os/WorkSource;

.field private final mMutex:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkServiceName:Ljava/lang/String;

.field private mNetworkState:I

.field private mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "serviceName"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 58
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 61
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    .line 65
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mIsBindNetworkSucess:Z

    .line 66
    const-string v0, "Default"

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkServiceName:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-direct {p0, p3}, Lcom/android/server/location/LocationProviderProxy;->loadNetworkLocationProvider(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationProviderProxy;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/location/LocationProviderProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I

    return v0
.end method

.method private getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy$Connection;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadNetworkLocationProvider(Ljava/lang/String;)V
    .locals 5
    .parameter "serviceName"

    .prologue
    const/4 v2, 0x1

    .line 94
    if-eqz p1, :cond_1

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, bRet:Z
    const-string v1, "com.mediatek.android.location.NetworkLocationProvider"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    const-string v3, "GEMINI_SUPPORT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    :cond_0
    new-instance v1, Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V

    iput-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 110
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 111
    const-string v3, "LocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationProviderProxy:bind networkLocationProvider service "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v2, :cond_2

    const-string v1, "sucess"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " name:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ActualNetworkServiceName"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ActualNetworkServiceSucess"

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mIsBindNetworkSucess:Z

    .line 115
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkServiceName:Ljava/lang/String;

    .line 117
    .end local v0           #bRet:Z
    :cond_1
    return-void

    .line 111
    .restart local v0       #bRet:Z
    :cond_2
    const-string v1, "failed"

    goto :goto_0

    .line 113
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 658
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 661
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 665
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->addListener(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 671
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 672
    return-void

    .line 671
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 667
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 446
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 447
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 448
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 452
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->disable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 459
    return-void

    .line 458
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 454
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 428
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 429
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 433
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->enable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 439
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 440
    return-void

    .line 439
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 435
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enableLocationTracking(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 540
    const-string v2, "LocationProviderProxy"

    const-string v3, "enableLocationTracking is called"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 543
    :try_start_0
    const-string v2, "LocationProviderProxy"

    const-string v4, "enableLocationTracking is called inter the mMutex"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iput-boolean p1, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    .line 545
    if-nez p1, :cond_0

    .line 547
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 548
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->clear()V

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 551
    .local v1, provider:Landroid/location/ILocationProvider;
    if-eqz v1, :cond_1

    .line 555
    :try_start_1
    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V

    .line 556
    const-string v2, "LocationProviderProxy"

    const-string v4, "enableLocationTracking is called with no exception"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 563
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 564
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableLocationTracking is called with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getAccuracy()I
    .locals 2

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 372
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getAccuracy()I

    move-result v1

    .line 378
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFileTime([J)I
    .locals 1
    .parameter "times"

    .prologue
    .line 695
    const/4 v0, -0x1

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 512
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 514
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v1

    .line 515
    .local v1, provider:Landroid/location/ILocationProvider;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    if-eqz v1, :cond_0

    .line 520
    :try_start_1
    invoke-interface {v1}, Landroid/location/ILocationProvider;->getInternalState()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 527
    :goto_0
    return-object v2

    .line 515
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 522
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    const-string v3, "getInternalState failed"

    invoke-static {v2, v3, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIsBindNetworkSucess()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mIsBindNetworkSucess:Z

    return v0
.end method

.method public getMinTime()J
    .locals 4

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    monitor-exit v1

    return-wide v2

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 2

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 359
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getPowerRequirement()I

    move-result v1

    .line 365
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 3
    .parameter "extras"

    .prologue
    .line 472
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v0

    .line 475
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    if-eqz v0, :cond_0

    .line 480
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 486
    :goto_0
    return v1

    .line 475
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 482
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    .line 486
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 3

    .prologue
    .line 492
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v0

    .line 495
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-eqz v0, :cond_0

    .line 500
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 506
    :goto_0
    return-wide v1

    .line 495
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 502
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    .line 506
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public hasMonetaryCost()Z
    .locals 2

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 307
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->hasMonetaryCost()Z

    move-result v1

    .line 313
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLocationTracking()Z
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    monitor-exit v1

    return v0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 5
    .parameter "criteria"

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 386
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v4}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 387
    .local v1, provider:Landroid/location/ILocationProvider;
    if-eqz v1, :cond_1

    .line 391
    :try_start_1
    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->meetsCriteria(Landroid/location/Criteria;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    monitor-exit v3

    .line 420
    :cond_0
    :goto_0
    return v2

    .line 393
    :catch_0
    move-exception v4

    .line 397
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->getAccuracy()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 403
    :cond_2
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    .line 404
    .local v0, criteriaPower:I
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->getPowerRequirement()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 408
    :cond_3
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsAltitude()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    :cond_4
    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsSpeed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    :cond_5
    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsBearing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 397
    .end local v0           #criteriaPower:I
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public reconnect()V
    .locals 5

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    const-string v0, "LocationProviderProxy"

    const-string v2, "LocationProviderProxy:reconnect() is called"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 129
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 130
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reconnectAfterIPO(Ljava/lang/String;)V
    .locals 3
    .parameter "serviceName"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    const-string v0, "LocationProviderProxy"

    const-string v2, "LocationProviderProxy:reconnect() after is called"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->loadNetworkLocationProvider(Ljava/lang/String;)V

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 676
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 679
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 683
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->removeListener(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 689
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 690
    return-void

    .line 689
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 685
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestSingleShotFix()Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public requiresCell()Z
    .locals 2

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 294
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresCell()Z

    move-result v1

    .line 300
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresNetwork()Z
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 268
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresNetwork()Z

    move-result v1

    .line 274
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresSatellite()Z
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 281
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresSatellite()Z

    move-result v1

    .line 287
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 639
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 642
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 646
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit v2

    .line 653
    :goto_0
    return v1

    .line 648
    :catch_0
    move-exception v1

    .line 652
    :cond_0
    monitor-exit v2

    .line 653
    const/4 v1, 0x0

    goto :goto_0

    .line 652
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 3
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 581
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 583
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 584
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 585
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 586
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 590
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationProvider;->setMinTime(JLandroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 596
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 597
    return-void

    .line 596
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 592
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 320
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsAltitude()Z

    move-result v1

    .line 326
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsBearing()Z
    .locals 2

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 346
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsBearing()Z

    move-result v1

    .line 352
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsSpeed()Z
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 333
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsSpeed()Z

    move-result v1

    .line 339
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateEPOFile()I
    .locals 1

    .prologue
    .line 700
    const/4 v0, -0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 621
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 624
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 628
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 634
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 635
    return-void

    .line 634
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 630
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 601
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 603
    :try_start_0
    iput p1, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I

    .line 604
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 605
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 606
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 610
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 617
    return-void

    .line 616
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 612
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
