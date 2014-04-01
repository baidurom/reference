.class public Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "CountryDetectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CountryDetectorService$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLocationBasedDetectorListener:Landroid/location/CountryListener;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/CountryDetectorService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 126
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/CountryDetectorService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/CountryDetectorService;)Lcom/android/server/location/ComprehensiveCountryDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    return-object v0
.end method

.method private addListener(Landroid/location/ICountryListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v3

    .line 207
    :try_start_0
    new-instance v1, Lcom/android/server/CountryDetectorService$Receiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V

    .line 208
    .local v1, r:Lcom/android/server/CountryDetectorService$Receiver;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/CountryDetectorService;->getAppName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/CountryDetectorService$Receiver;->mApplicationName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :try_start_1
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 212
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 215
    const-string v2, "CountryDetector"

    const-string v4, "The first listener is added"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    invoke-virtual {p0, v2}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 224
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CountryDetector"

    const-string v4, "linkToDeath failed:"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #r:Lcom/android/server/CountryDetectorService$Receiver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 8
    .parameter "pid"

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, appName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 154
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 155
    .local v4, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 156
    if-eqz v4, :cond_1

    .line 158
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 161
    .local v3, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 163
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 168
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 170
    const-string v5, "CountryDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not get the app name of the pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    return-object v1
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 269
    new-instance v0, Lcom/android/server/CountryDetectorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CountryDetectorService$1;-><init>(Lcom/android/server/CountryDetectorService;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    .line 282
    return-void
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V

    .line 234
    const-string v0, "CountryDetector"

    const-string v2, "No listener is left"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCountryListener(Landroid/location/ICountryListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 183
    const-string v0, "CountryDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling addCountryListener when system is not ready ap name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/CountryDetectorService;->getAppName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->addListener(Landroid/location/ICountryListener;)V

    .line 187
    return-void
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-boolean v1, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 134
    const-string v1, "CountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectCountry is called before the system is ready ap name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/CountryDetectorService;->getAppName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-virtual {v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 139
    .local v0, country:Landroid/location/Country;
    if-eqz v0, :cond_1

    .line 141
    const-string v1, "CountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectCountry is called callingPid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ap name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/CountryDetectorService;->getAppName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "country:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-object v0

    .line 145
    :cond_1
    const-string v1, "CountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectCountry is called callingPid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ap name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/CountryDetectorService;->getAppName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "country is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 315
    return-void
.end method

.method isSystemReady()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return v0
.end method

.method protected notifyReceivers(Landroid/location/Country;)V
    .locals 7
    .parameter "country"

    .prologue
    .line 241
    iget-object v4, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 243
    :try_start_0
    iget-object v3, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CountryDetectorService$Receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .local v2, receiver:Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_1
    const-string v3, "CountryDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyReceivers is called receiver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/CountryDetectorService$Receiver;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "country:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v2}, Lcom/android/server/CountryDetectorService$Receiver;->getListener()Landroid/location/ICountryListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CountryDetector"

    const-string v5, "notifyReceivers failed:"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 256
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #receiver:Lcom/android/server/CountryDetectorService$Receiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    return-void
.end method

.method public removeCountryListener(Landroid/location/ICountryListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 197
    const-string v0, "CountryDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling removeCountryListener when system is not ready ap name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/CountryDetectorService;->getAppName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 200
    :cond_0
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    .line 201
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 286
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 287
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 288
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 289
    invoke-direct {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 291
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 292
    return-void
.end method

.method protected setCountryListener(Landroid/location/CountryListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/CountryDetectorService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$2;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CountryDetectorService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 263
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 264
    return-void
.end method
