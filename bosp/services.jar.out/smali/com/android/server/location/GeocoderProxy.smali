.class public Lcom/android/server/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeocoderProxy$1;,
        Lcom/android/server/location/GeocoderProxy$Connection;
    }
.end annotation


# static fields
.field private static final GEOCODER_BIND_SERVICENMAE:Ljava/lang/String; = "GeocoderBindeServiceName"

.field private static final GEOCODER_BIND_SERVICESUCESS:Ljava/lang/String; = "GeocoderBindeServiceSucess"

.field private static final TAG:Ljava/lang/String; = "GeocoderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private final mMutex:Ljava/lang/Object;

.field private mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "serviceName"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;

    .line 59
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p2}, Lcom/android/server/location/GeocoderProxy;->loadGeocoderProvider(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private loadGeocoderProvider(Ljava/lang/String;)V
    .locals 5
    .parameter "serviceName"

    .prologue
    const/4 v2, 0x1

    .line 65
    if-eqz p1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, bRet:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mIntent:Landroid/content/Intent;

    .line 69
    new-instance v1, Lcom/android/server/location/GeocoderProxy$Connection;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/location/GeocoderProxy$Connection;-><init>(Lcom/android/server/location/GeocoderProxy;Lcom/android/server/location/GeocoderProxy$1;)V

    iput-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;

    .line 70
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GeocoderProxy;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 71
    const-string v3, "GeocoderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeocoderProxy:bind geocoder service "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v2, :cond_1

    const-string v1, "sucess"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ActualGeocoderServiceName"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ActualGeocoderServiceSucess"

    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    .end local v0           #bRet:Z
    :cond_0
    return-void

    .line 71
    .restart local v0       #bRet:Z
    :cond_1
    const-string v1, "fail"

    goto :goto_0

    .line 73
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 138
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const-string v2, "GeocoderProxy"

    const-string v3, "GeocoderProxy:getFromLocation() is called"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/GeocoderProxy$Connection;->getProvider()Landroid/location/IGeocodeProvider;

    move-result-object v1

    .line 143
    .local v1, provider:Landroid/location/IGeocodeProvider;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const-string v10, "Service not Available"

    .line 145
    .local v10, retString:Ljava/lang/String;
    if-eqz v1, :cond_2

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 149
    :try_start_1
    invoke-interface/range {v1 .. v8}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 150
    sget-boolean v2, Lcom/android/server/location/LocationServiceDebug;->DEBUG_GEOPROVIDERPROXY:Z

    if-eqz v2, :cond_0

    .line 152
    const-string v3, "GeocoderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFromLocation retString:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v10, :cond_1

    move-object v2, v10

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "addrs:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v11, v10

    .line 161
    .end local v10           #retString:Ljava/lang/String;
    .local v11, retString:Ljava/lang/String;
    :goto_1
    return-object v11

    .line 143
    .end local v1           #provider:Landroid/location/IGeocodeProvider;
    .end local v11           #retString:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 152
    .restart local v1       #provider:Landroid/location/IGeocodeProvider;
    .restart local v10       #retString:Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v2, "null"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v9

    .line 158
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "GeocoderProxy"

    const-string v3, "getFromLocation failed"

    invoke-static {v2, v3, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v9           #e:Landroid/os/RemoteException;
    :cond_2
    move-object v11, v10

    .line 161
    .end local v10           #retString:Ljava/lang/String;
    .restart local v11       #retString:Ljava/lang/String;
    goto :goto_1
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 168
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const-string v1, "GeocoderProxy"

    const-string v2, "GeocoderProxy:getFromLocationName() is called"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/GeocoderProxy$Connection;->getProvider()Landroid/location/IGeocodeProvider;

    move-result-object v0

    .line 173
    .local v0, provider:Landroid/location/IGeocodeProvider;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 178
    :try_start_1
    invoke-interface/range {v0 .. v12}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 173
    .end local v0           #provider:Landroid/location/IGeocodeProvider;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 181
    .restart local v0       #provider:Landroid/location/IGeocodeProvider;
    :catch_0
    move-exception v13

    .line 183
    .local v13, e:Landroid/os/RemoteException;
    const-string v1, "GeocoderProxy"

    const-string v2, "getFromLocationName failed"

    invoke-static {v1, v2, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Service not Available"

    goto :goto_0
.end method

.method public reconnect()V
    .locals 5

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "GeocoderProxy"

    const-string v2, "GeocoderProxy:reconnect() is called"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 89
    new-instance v0, Lcom/android/server/location/GeocoderProxy$Connection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/location/GeocoderProxy$Connection;-><init>(Lcom/android/server/location/GeocoderProxy;Lcom/android/server/location/GeocoderProxy$1;)V

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;

    .line 90
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 92
    :cond_0
    monitor-exit v1

    .line 93
    return-void

    .line 92
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
    .line 97
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    const-string v0, "GeocoderProxy"

    const-string v2, "GeocoderProxy:reconnectAfterIPO is called"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GeocoderProxy;->loadGeocoderProvider(Ljava/lang/String;)V

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
