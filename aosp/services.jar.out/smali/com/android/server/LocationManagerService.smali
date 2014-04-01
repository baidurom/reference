.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$ProximityListener;,
        Lcom/android/server/LocationManagerService$ProximityAlert;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$LpCapabilityComparator;,
        Lcom/android/server/LocationManagerService$LpAccuracyComparator;,
        Lcom/android/server/LocationManagerService$LpPowerComparator;,
        Lcom/android/server/LocationManagerService$SettingsObserver;,
        Lcom/android/server/LocationManagerService$Receiver;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final LOCAL_LOGV:Z = true

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final MESSAGE_PACKAGE_UPDATED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"

.field private static sProvidersLoaded:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeocodeProviderPackageName:Ljava/lang/String;

.field mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mLastKnownLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWriteTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private mLocationServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

.field private mNetworkLocationProviderPackageName:Ljava/lang/String;

.field private mNetworkState:I

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPendingBroadcasts:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitiesEntered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityListener:Landroid/location/ILocationListener;

.field private mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/content/ContentQueryMap;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 627
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastWriteTime:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 122
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 131
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    .line 140
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 168
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 171
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 172
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    .line 179
    iput v2, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    .line 184
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    .line 185
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

    .line 2335
    new-instance v0, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2469
    new-instance v0, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 628
    const-string v0, "LocationManagerService"

    const-string v1, "Constructed LocationManager Service"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 630
    new-instance v0, Lcom/android/server/location/LocationAppLookUtility;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationAppLookUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    .line 631
    invoke-static {p1}, Lcom/android/server/location/LocationBindServiceSelection;->getSingleInstance(Landroid/content/Context;)Lcom/android/server/location/LocationBindServiceSelection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

    .line 632
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 633
    return-void
.end method

.method private _getAllProvidersLocked()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 766
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 768
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 769
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 771
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    return-object v1
.end method

.method private _getLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;
    .locals 6
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 2105
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_getLastKnownLocationLocked is called provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ap name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/LocationAppLookUtility;->getAppName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 2109
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2110
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_1

    .line 2128
    :cond_0
    :goto_0
    return-object v0

    .line 2115
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2119
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 2120
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_2

    .line 2122
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastKnownLocation is called provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "location:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2126
    :cond_2
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastKnownLocation is called provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "location: null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    .line 2011
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2012
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_0

    .line 2014
    const/4 v0, 0x0

    .line 2030
    :goto_0
    return-object v0

    .line 2017
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 2019
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2020
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2021
    const-string v2, "satellite"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2022
    const-string v2, "cell"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2023
    const-string v2, "cost"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2024
    const-string v2, "altitude"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2025
    const-string v2, "speed"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2026
    const-string v2, "bearing"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2027
    const-string v2, "power"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2028
    const-string v2, "accuracy"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 5
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 798
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 800
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 801
    .local v3, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 804
    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 798
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 808
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v3, p1}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 812
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 815
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 2068
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 2070
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2071
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 2073
    const/4 v1, 0x0

    .line 2075
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private _loadNetworkLocationAndGeocoderProvider()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 578
    .local v3, startTime:J
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

    invoke-virtual {v5}, Lcom/android/server/location/LocationBindServiceSelection;->getNetworkLocationServiceName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 579
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

    invoke-virtual {v5}, Lcom/android/server/location/LocationBindServiceSelection;->getGeocoderServiceName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 581
    .local v0, endTime:J
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The time to get PackageName is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 586
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 589
    new-instance v5, Lcom/android/server/location/LocationProviderProxy;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "network"

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    .line 591
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 593
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkLocationProvider has been added to the LMS Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v10}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 606
    new-instance v5, Lcom/android/server/location/GeocoderProxy;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 608
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GeocodeProvider has been added to the LMS Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_1
    return-void

    .line 597
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 598
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ActualNetworkServiceName"

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 599
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ActualNetworkServiceSucess"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 601
    const-string v6, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find the Network Location Provider Package mNetworkLocationProviderPackageName:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v7, v0, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string v5, "null"

    goto :goto_2

    .line 612
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 614
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ActualGeocoderServiceName"

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 615
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ActualGeocoderServiceSucess"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 617
    const-string v6, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find the Geocoder Provider Package mGeocodeProviderPackageName:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v7, v0, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string v5, "null"

    goto :goto_3
.end method

.method private _loadProvidersLocked()V
    .locals 4

    .prologue
    .line 551
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    new-instance v0, Lcom/android/server/location/GpsLocationProvider;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 555
    .local v0, gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 556
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 557
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 558
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    .line 565
    .end local v0           #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    :goto_0
    new-instance v1, Lcom/android/server/location/PassiveProvider;

    invoke-direct {v1, p0}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 566
    .local v1, passiveProvider:Lcom/android/server/location/PassiveProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 567
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 571
    return-void

    .line 562
    .end local v1           #passiveProvider:Lcom/android/server/location/PassiveProvider;
    :cond_0
    const-string v2, "LocationManagerService"

    const-string v3, "GPS is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/LocationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method private addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    return-void
.end method

.method private addProximityAlertLocked(DDFJLandroid/app/PendingIntent;)V
    .locals 15
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 1914
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addProximityAlert is called latitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "longitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "radius: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "expiration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ap name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/location/LocationAppLookUtility;->getAppName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const-string v3, "gps"

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network"

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1918
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1921
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, p6, v3

    if-eqz v3, :cond_2

    .line 1923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long p6, p6, v3

    .line 1925
    :cond_2
    new-instance v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v3, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/server/LocationManagerService$ProximityAlert;-><init>(Lcom/android/server/LocationManagerService;IDDFJLandroid/app/PendingIntent;)V

    .line 1926
    .local v2, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    move-object/from16 v0, p8

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-nez v3, :cond_3

    .line 1930
    new-instance v3, Lcom/android/server/LocationManagerService$ProximityListener;

    invoke-direct {v3, p0}, Lcom/android/server/LocationManagerService$ProximityListener;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 1931
    new-instance v3, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    invoke-direct {v3, p0, v4}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)V

    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1933
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, i:I
    :goto_0
    if-ltz v13, :cond_3

    .line 1935
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/LocationProviderInterface;

    .line 1936
    .local v14, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v14}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1933
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1939
    .end local v13           #i:I
    .end local v14           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-void
.end method

.method private best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/location/LocationProviderInterface;"
        }
    .end annotation

    .prologue
    .local p1, providerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 910
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 912
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 913
    .local v5, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 915
    .local v3, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 917
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 921
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    .line 962
    :goto_1
    return-object v9

    .line 925
    :cond_1
    new-instance v9, Lcom/android/server/LocationManagerService$LpPowerComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpPowerComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 926
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v4

    .line 927
    .local v4, power:I
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 929
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 934
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v7, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 936
    .local v2, idx:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 937
    .local v6, size:I
    :goto_2
    if-ge v2, v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 939
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 944
    :cond_3
    new-instance v9, Lcom/android/server/LocationManagerService$LpAccuracyComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 945
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    .line 946
    .local v0, acc:I
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 948
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 951
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v8, tmp2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 953
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 954
    :goto_3
    if-ge v2, v6, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ne v9, v0, :cond_5

    .line 956
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 961
    :cond_5
    new-instance v9, Lcom/android/server/LocationManagerService$LpCapabilityComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 962
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto/16 :goto_1
.end method

.method private checkMockPermissionsSafe()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2570
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2571
    .local v0, allowMocks:Z
    :goto_0
    if-nez v0, :cond_1

    .line 2573
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION secure setting"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #allowMocks:Z
    :cond_0
    move v0, v1

    .line 2570
    goto :goto_0

    .line 2576
    .restart local v0       #allowMocks:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2578
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2580
    :cond_2
    return-void
.end method

.method private checkPermissionsSafe(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 710
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_1
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_2
    return-void
.end method

.method private decrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2506
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2508
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2513
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2515
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2516
    const-string v1, "Released wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2531
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2532
    return-void

    .line 2520
    :cond_1
    :try_start_3
    const-string v1, "Can\'t release wakelock again!"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2523
    :catch_0
    move-exception v0

    .line 2528
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "LocationManagerService"

    const-string v3, "exception in releaseWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2531
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private getMinTimeLocked(Ljava/lang/String;)J
    .locals 13
    .parameter "provider"

    .prologue
    .line 1154
    const-wide v5, 0x7fffffffffffffffL

    .line 1155
    .local v5, minTime:J
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1156
    .local v7, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->clear()V

    .line 1157
    if-eqz v7, :cond_3

    .line 1159
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1161
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1162
    .local v8, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v0, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    .line 1163
    .local v0, curTime:J
    cmp-long v9, v0, v5

    if-gez v9, :cond_0

    .line 1165
    move-wide v5, v0

    .line 1159
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1168
    .end local v0           #curTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    const-wide/16 v9, 0x3

    mul-long/2addr v9, v5

    const-wide/16 v11, 0x2

    div-long v3, v9, v11

    .line 1169
    .local v3, inclTime:J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1171
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1172
    .restart local v8       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v9, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_2

    .line 1174
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget v10, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->add(I)Z

    .line 1169
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1178
    .end local v2           #i:I
    .end local v3           #inclTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_3
    return-wide v5
.end method

.method private getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1280
    .local v0, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1282
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 1283
    .restart local v0       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    :cond_0
    return-object v0
.end method

.method private getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 6
    .parameter "listener"

    .prologue
    .line 1253
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1254
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 1255
    .local v2, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v2, :cond_0

    .line 1257
    new-instance v2, Lcom/android/server/LocationManagerService$Receiver;

    .end local v2           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v2, p0, p1}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)V

    .line 1258
    .restart local v2       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1264
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :cond_0
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The same Receiver is got binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 1274
    :goto_0
    return-object v3

    .line 1267
    :catch_0
    move-exception v1

    .line 1269
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "LocationManagerService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .locals 22
    .parameter "location"
    .parameter "passive"

    .prologue
    .line 2166
    if-eqz p2, :cond_1

    const-string v13, "passive"

    .line 2167
    .local v13, provider:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 2168
    .local v17, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_2

    .line 2269
    :cond_0
    :goto_1
    return-void

    .line 2166
    .end local v13           #provider:Ljava/lang/String;
    .end local v17           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 2172
    .restart local v13       #provider:Ljava/lang/String;
    .restart local v17       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleLocationChangedLocked is called provider:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "location: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/LocationProviderInterface;

    .line 2174
    .local v10, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v10, :cond_0

    .line 2178
    instance-of v0, v10, Lcom/android/server/location/MockProvider;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2181
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "Mock"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 2183
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "location has been blocked "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2188
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    .line 2189
    .local v7, lastLocation:Landroid/location/Location;
    if-nez v7, :cond_b

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v19, v0

    new-instance v20, Landroid/location/Location;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleLocationChangedLocked is called frist fix is sucess provider:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "location:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :goto_2
    invoke-interface {v10}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v8

    .line 2203
    .local v8, newStatusUpdateTime:J
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2204
    .local v4, extras:Landroid/os/Bundle;
    invoke-interface {v10, v4}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v18

    .line 2206
    .local v18, status:I
    const/4 v3, 0x0

    .line 2209
    .local v3, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2210
    .local v2, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v2, :cond_d

    .line 2212
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2213
    .local v14, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2214
    .local v15, receiver:Lcom/android/server/LocationManagerService$Receiver;
    const/16 v16, 0x0

    .line 2216
    .local v16, receiverDead:Z
    iget-object v6, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2217
    .local v6, lastLoc:Landroid/location/Location;
    if-eqz v6, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v6, v14}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2219
    :cond_4
    if-nez v6, :cond_c

    .line 2221
    new-instance v6, Landroid/location/Location;

    .end local v6           #lastLoc:Landroid/location/Location;
    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2222
    .restart local v6       #lastLoc:Landroid/location/Location;
    iput-object v6, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2228
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 2230
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException calling onLocationChanged on receiver :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/android/server/LocationManagerService$Receiver;->mAplicationName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    const/16 v16, 0x1

    .line 2235
    :cond_5
    iget-wide v11, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2236
    .local v11, prevStatusUpdateTime:J
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "receiver:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/android/server/LocationManagerService$Receiver;->mAplicationName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "provider:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "newStatusUpdateTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "prevStatusUpdateTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    cmp-long v19, v8, v11

    if-lez v19, :cond_7

    const-wide/16 v19, 0x0

    cmp-long v19, v11, v19

    if-nez v19, :cond_6

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 2239
    :cond_6
    iput-wide v8, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2240
    move/from16 v0, v18

    invoke-virtual {v15, v13, v0, v4}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 2242
    const/16 v16, 0x1

    .line 2243
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :cond_7
    if-nez v16, :cond_8

    iget-boolean v0, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mSingleShot:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 2251
    :cond_8
    if-nez v3, :cond_9

    .line 2253
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    .restart local v3       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_9
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 2257
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 2196
    .end local v2           #N:I
    .end local v3           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v5           #i:I
    .end local v6           #lastLoc:Landroid/location/Location;
    .end local v8           #newStatusUpdateTime:J
    .end local v11           #prevStatusUpdateTime:J
    .end local v14           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v16           #receiverDead:Z
    .end local v18           #status:I
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_2

    .line 2226
    .restart local v2       #N:I
    .restart local v3       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v4       #extras:Landroid/os/Bundle;
    .restart local v5       #i:I
    .restart local v6       #lastLoc:Landroid/location/Location;
    .restart local v8       #newStatusUpdateTime:J
    .restart local v14       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v15       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .restart local v16       #receiverDead:Z
    .restart local v18       #status:I
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_4

    .line 2262
    .end local v6           #lastLoc:Landroid/location/Location;
    .end local v14           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v16           #receiverDead:Z
    :cond_d
    if-eqz v3, :cond_0

    .line 2264
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v5, v19, -0x1

    :goto_5
    if-ltz v5, :cond_0

    .line 2266
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2264
    add-int/lit8 v5, v5, -0x1

    goto :goto_5
.end method

.method private incrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2484
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2486
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2490
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2491
    const-string v1, "Acquired wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2501
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2502
    return-void

    .line 2493
    :catch_0
    move-exception v0

    .line 2498
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "exception in acquireWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2501
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 646
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 647
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v1, "LocationManagerService"

    invoke-virtual {v7, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 650
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_loadNetworkLocationAndGeocoderProvider()V

    .line 651
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProviders()V

    .line 654
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 655
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 668
    .local v8, sdFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 671
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "location_providers_allowed"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 673
    .local v9, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v9, v3, v12, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 674
    new-instance v10, Lcom/android/server/LocationManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/android/server/LocationManagerService$SettingsObserver;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    .line 675
    .local v10, settingsObserver:Lcom/android/server/LocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 676
    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    .line 690
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    const/4 v0, 0x1

    .line 704
    :goto_0
    return v0

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 702
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 704
    .local v0, bRet:Z
    goto :goto_0
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 725
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "passive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 739
    :cond_1
    :goto_0
    return v0

    .line 731
    :cond_2
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 739
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    .line 522
    const-string v0, "LocationManagerService"

    const-string v1, "_loadProvidersLocked() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    .line 527
    monitor-exit v1

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 532
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    .line 533
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 3

    .prologue
    .line 540
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_loadProvidersLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Exception loading providers:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter "log"

    .prologue
    .line 2786
    const-string v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2788
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_0
    return-void
.end method

.method private nextAccuracy(I)I
    .locals 1
    .parameter "accuracy"

    .prologue
    .line 846
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 848
    const/4 v0, 0x2

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextPower(I)I
    .locals 1
    .parameter "power"

    .prologue
    const/4 v0, 0x0

    .line 825
    packed-switch p1, :pswitch_data_0

    .line 835
    :goto_0
    :pswitch_0
    return v0

    .line 828
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 830
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z
    .locals 7
    .parameter "provider"
    .parameter "uid"
    .parameter "excludedReceiver"

    .prologue
    const/4 v5, 0x1

    .line 1290
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1291
    .local v4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v4, :cond_1

    .line 1293
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1295
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1296
    .local v3, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    if-ne v6, p2, :cond_0

    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eq v6, p3, :cond_0

    .line 1309
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :goto_1
    return v5

    .line 1293
    .restart local v1       #i:I
    .restart local v3       #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1302
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1304
    .local v0, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v6, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    if-ne v6, p2, :cond_2

    goto :goto_1

    .line 1309
    .end local v0           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private removeProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 515
    const-string v1, "LocationManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeProvider() is called provideName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-void

    .line 515
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1968
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeProximityAlert: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1975
    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1976
    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 1978
    :cond_0
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 17
    .parameter "receiver"

    .prologue
    .line 1488
    const-string v13, "LocationManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeUpdatesLocked is called provider:receiver: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "callingPid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ap name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/location/LocationAppLookUtility;->getAppName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1492
    .local v2, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1495
    .local v5, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1497
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v13

    invoke-interface {v13}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1498
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    :try_start_1
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v13, :cond_0

    .line 1502
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    .line 1503
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1505
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1509
    :cond_1
    :try_start_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1510
    .local v10, providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1511
    .local v7, oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v7, :cond_4

    .line 1514
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1516
    .local v11, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v13, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v2, v1}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    iget-object v14, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/LocationProviderInterface;

    .line 1519
    .local v8, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v8, :cond_2

    .line 1521
    invoke-interface {v8, v2}, Lcom/android/server/location/LocationProviderInterface;->removeListener(I)V

    .line 1524
    .end local v8           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    invoke-virtual {v11}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1565
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v10           #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v13

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 1505
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v13

    .line 1527
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v10       #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1534
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1537
    .local v9, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1542
    const/4 v3, 0x0

    .line 1543
    .local v3, hasOtherListener:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1544
    .local v12, recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 1546
    const/4 v3, 0x1

    .line 1549
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/LocationProviderInterface;

    .line 1550
    .restart local v8       #p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v8, :cond_5

    .line 1552
    if-eqz v3, :cond_7

    .line 1554
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-interface {v8, v13, v14, v15}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    goto :goto_1

    .line 1558
    :cond_7
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1565
    .end local v3           #hasOtherListener:Z
    .end local v8           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v9           #provider:Ljava/lang/String;
    .end local v12           #recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_8
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1567
    return-void
.end method

.method private requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V
    .locals 19
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "receiver"

    .prologue
    .line 1384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/location/LocationProviderInterface;

    .line 1385
    .local v18, p:Lcom/android/server/location/LocationProviderInterface;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/location/LocationAppLookUtility;->getAppName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    iput-object v3, v0, Lcom/android/server/LocationManagerService$Receiver;->mAplicationName:Ljava/lang/String;

    .line 1386
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLocationUpdatesLocked is called provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "minTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "minDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "singleShot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "receiver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callingPid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ap name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/android/server/LocationManagerService$Receiver;->mAplicationName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    if-nez v18, :cond_0

    .line 1390
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLocationUpdatesLocked is called provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :goto_0
    return-void

    .line 1394
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1397
    .local v10, callingUid:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v3}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v16, 0x1

    .line 1398
    .local v16, newUid:Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1401
    .local v11, identity:J
    :try_start_0
    new-instance v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;I)V

    .line 1402
    .local v2, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1403
    .local v17, oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v17, :cond_1

    .line 1405
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V

    .line 1407
    :cond_1
    if-eqz v16, :cond_2

    .line 1409
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/android/server/location/LocationProviderInterface;->addListener(I)V

    .line 1412
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v13

    .line 1413
    .local v13, isProviderEnabled:Z
    if-eqz v13, :cond_6

    .line 1415
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v14

    .line 1416
    .local v14, minTimeForProvider:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v18

    invoke-interface {v0, v14, v15, v3}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1421
    if-eqz p5, :cond_3

    invoke-interface/range {v18 .. v18}, Lcom/android/server/location/LocationProviderInterface;->requestSingleShotFix()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1423
    :cond_3
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is calling enableLocationTracking(true) provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    .end local v14           #minTimeForProvider:J
    :cond_4
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1397
    .end local v2           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v11           #identity:J
    .end local v13           #isProviderEnabled:Z
    .end local v16           #newUid:Z
    .end local v17           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 1430
    .restart local v2       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v11       #identity:J
    .restart local v13       #isProviderEnabled:Z
    .restart local v16       #newUid:Z
    .restart local v17       #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    :try_start_1
    const-string v3, "LocationManagerService"

    const-string v4, "Notify the listener that updates are currently disabled"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/4 v3, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1436
    .end local v2           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v13           #isProviderEnabled:Z
    .end local v17           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v3

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 10
    .parameter "loc"
    .parameter "lastLoc"
    .parameter "record"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2134
    const-string v6, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldBroadcastSafe() is called loc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "lastLoc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "record: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    if-nez p1, :cond_1

    .line 2137
    const-string v5, "LocationManagerService"

    const-string v6, "shouldBroadcastSafe() is returnning true due to lastLoc is null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    :goto_0
    return v4

    .line 2144
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 2146
    const-string v4, "LocationManagerService"

    const-string v6, "shouldBroadcastSafe() is returnning false due to the same time"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2147
    goto :goto_0

    .line 2151
    :cond_2
    iget v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinDistance:F

    float-to-double v0, v6

    .line 2152
    .local v0, minDistance:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    .line 2154
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v6

    float-to-double v2, v6

    .line 2155
    .local v2, realDistance:D
    cmpg-double v6, v2, v0

    if-gtz v6, :cond_0

    .line 2157
    const-string v4, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldBroadcastSafe() is returnning false due to the distance realDistance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "minDistance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2158
    goto :goto_0
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 10
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 1098
    const/4 v3, 0x0

    .line 1100
    .local v3, listeners:I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1101
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    const/4 v1, 0x0

    .line 1108
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1109
    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_4

    .line 1111
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1112
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1114
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1116
    .local v5, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1118
    if-nez v1, :cond_2

    .line 1120
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1128
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    if-eqz v1, :cond_5

    .line 1130
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_5

    .line 1132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1130
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1136
    .end local v2           #i:I
    :cond_5
    if-eqz p2, :cond_6

    .line 1138
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1139
    if-lez v3, :cond_0

    .line 1141
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v7, v8, v9}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1142
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    goto :goto_0

    .line 1147
    :cond_6
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1148
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_0
.end method

.method private updateProvidersLocked()V
    .locals 9

    .prologue
    .line 1069
    const/4 v0, 0x0

    .line 1070
    .local v0, changesMade:Z
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1072
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1073
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v2

    .line 1074
    .local v2, isEnabled:Z
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v5

    .line 1076
    .local v5, shouldBeEnabled:Z
    if-eqz v2, :cond_1

    if-nez v5, :cond_1

    .line 1079
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1080
    const/4 v0, 0x1

    .line 1070
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1082
    :cond_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    .line 1085
    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1086
    const/4 v0, 0x1

    goto :goto_1

    .line 1089
    .end local v2           #isEnabled:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v5           #shouldBeEnabled:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 1092
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1094
    :cond_3
    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 1571
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-nez v2, :cond_0

    .line 1592
    :goto_0
    return v1

    .line 1575
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1577
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1581
    :cond_1
    if-eqz p1, :cond_2

    .line 1583
    :try_start_0
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addGpsStatusListener() is called ProcessName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/LocationAppLookUtility;->getAppName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_2
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v2, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    const/4 v1, 0x1

    goto :goto_0

    .line 1587
    :catch_0
    move-exception v0

    .line 1589
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManagerService"

    const-string v3, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 5
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 1893
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1895
    :try_start_1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/LocationManagerService;->addProximityAlertLocked(DDFJLandroid/app/PendingIntent;)V

    .line 1896
    monitor-exit v4

    .line 1910
    :goto_0
    return-void

    .line 1896
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1898
    :catch_0
    move-exception v2

    .line 1900
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1902
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1904
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1906
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1908
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "addProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 17
    .parameter "name"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 2585
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2587
    const-string v2, "passive"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2589
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot mock the passive location provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2592
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2593
    .local v13, identity:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2595
    :try_start_0
    new-instance v1, Lcom/android/server/location/MockProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    .line 2599
    .local v1, provider:Lcom/android/server/location/MockProvider;
    const-string v2, "gps"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2601
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/location/LocationProviderInterface;

    .line 2602
    .local v15, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v15, :cond_2

    .line 2604
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 2605
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2608
    .end local v15           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2610
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2616
    .end local v1           #provider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2612
    .restart local v1       #provider:Lcom/android/server/location/MockProvider;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2615
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2616
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2617
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2618
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2711
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2712
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2714
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2715
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2717
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2724
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2719
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2720
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2721
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2722
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2724
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2725
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2669
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2670
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2672
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2673
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2675
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2678
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2677
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V

    .line 2678
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2679
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2743
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2744
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2746
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2747
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2749
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2752
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2751
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V

    .line 2752
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2753
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 2796
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2892
    :goto_0
    return-void

    .line 2800
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2802
    :try_start_0
    const-string v13, "Current Location Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  sProvidersLoaded="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v15, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2804
    const-string v13, "  Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2806
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2808
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2806
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2810
    :cond_1
    const-string v13, "  Location Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v2           #i:I
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 2813
    .local v2, i:Lcom/android/server/LocationManagerService$Receiver;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2814
    iget-object v13, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2816
    .local v10, j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$UpdateRecord;

    const-string v15, "        "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 2891
    .end local v1           #N:I
    .end local v2           #i:Lcom/android/server/LocationManagerService$Receiver;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 2820
    .restart local v1       #N:I
    :cond_3
    :try_start_1
    const-string v13, "  Records by Provider:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2821
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2823
    .local v6, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2826
    .local v9, j:Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    const-string v13, "        "

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v13}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 2830
    .end local v6           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #j:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5
    const-string v13, "  Last Known Locations:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2833
    .local v4, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;

    new-instance v15, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v16, "      "

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_4

    .line 2836
    .end local v4           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 2838
    const-string v13, "  Proximity Alerts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2841
    .local v3, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$ProximityAlert;

    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 2845
    .end local v3           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 2847
    const-string v13, "  Proximities Entered:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2850
    .local v2, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const-string v13, "      "

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v13}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    .line 2854
    .end local v2           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityReceiver="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityListener="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 2858
    const-string v13, "  Enabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2861
    .local v2, i:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2865
    .end local v2           #i:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_a

    .line 2867
    const-string v13, "  Disabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2870
    .restart local v2       #i:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 2874
    .end local v2           #i:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_b

    .line 2876
    const-string v13, "  Mock Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2879
    .local v5, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/MockProvider;

    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9

    .line 2882
    .end local v5           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/LocationProviderInterface;

    .line 2884
    .local v11, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getInternalState()Ljava/lang/String;

    move-result-object v12

    .line 2885
    .local v12, state:Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 2887
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " Internal State:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 2891
    .end local v11           #provider:Lcom/android/server/location/LocationProviderInterface;
    .end local v12           #state:Ljava/lang/String;
    :cond_d
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 748
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_getAllProvidersLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 758
    :goto_0
    return-object v2

    .line 749
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 751
    :catch_0
    move-exception v1

    .line 753
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 755
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 757
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getAllProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .parameter "criteria"
    .parameter "enabledOnly"

    .prologue
    const/4 v5, 0x0

    .line 994
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 995
    .local v2, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 997
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1053
    :goto_0
    return-object v4

    .line 1001
    :cond_0
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 1004
    .end local p1
    .local v1, criteria:Landroid/location/Criteria;
    invoke-virtual {v1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v3

    .line 1005
    .local v3, power:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 1007
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->nextPower(I)I

    move-result v3

    .line 1008
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 1009
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 1011
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1013
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 1017
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_2
    invoke-virtual {v1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    .line 1018
    .local v0, accuracy:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 1020
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->nextAccuracy(I)I

    move-result v0

    .line 1021
    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1022
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 1024
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1026
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 1030
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_4
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1031
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1032
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1034
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 1038
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_5
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 1039
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1040
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1042
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1046
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_6
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1047
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1048
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1050
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1053
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_7
    const/4 v4, 0x0

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0
.end method

.method public getFileTime([J)I
    .locals 4
    .parameter "times"

    .prologue
    const/4 v1, -0x1

    .line 2758
    if-nez p1, :cond_0

    .line 2760
    const-string v2, "LocationManagerService"

    const-string v3, "getFileTime failed: paramer is null..."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :goto_0
    return v1

    .line 2764
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2765
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_1

    .line 2767
    const-string v2, "LocationManagerService"

    const-string v3, "LocationProvider is null..."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2770
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/server/location/LocationProviderInterface;->getFileTime([J)I

    move-result v1

    goto :goto_0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 10
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
    .line 2543
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v9, 0x0

    .line 2544
    .local v9, retString:Ljava/lang/String;
    const-string v2, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromLocation is called geocoderIsPresent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->geocoderIsPresent()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const-string v1, "true"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "latitude:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "longitude:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "callingPid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ap name:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/location/LocationAppLookUtility;->getAppName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_0

    .line 2548
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 2549
    const-string v2, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromLocation is called retString:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v9, :cond_2

    move-object v1, v9

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "addrs:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :cond_0
    return-object v9

    .line 2544
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 2549
    :cond_2
    const-string v1, "null"

    goto :goto_1
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 13
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
    .line 2557
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const-string v1, "LocationManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromLocationName is called geocoderIsPresent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->geocoderIsPresent()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "locationName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "callingPid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ap name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationAppLookUtility;->getAppName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_1

    .line 2561
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2564
    :goto_1
    return-object v0

    .line 2557
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 2564
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 6
    .parameter "provider"

    .prologue
    .line 2082
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastKnownLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2088
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 2089
    .local v1, loc:Landroid/location/Location;
    monitor-exit v4

    .line 2099
    .end local v1           #loc:Landroid/location/Location;
    :goto_0
    return-object v1

    .line 2090
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2092
    :catch_0
    move-exception v2

    .line 2094
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 2096
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2098
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "getLastKnownLocation got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2099
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "provider"

    .prologue
    .line 1989
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1991
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v4

    .line 2005
    :goto_0
    return-object v3

    .line 1992
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1994
    :catch_0
    move-exception v2

    .line 1996
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1998
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2000
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 2002
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2004
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "_getProviderInfo got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2005
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 4
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 778
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 780
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->_getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 790
    :goto_0
    return-object v2

    .line 781
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 783
    :catch_0
    move-exception v1

    .line 785
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 787
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 789
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 2037
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2039
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    .line 2049
    :goto_0
    return v2

    .line 2040
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2042
    :catch_0
    move-exception v1

    .line 2044
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 2046
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2048
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "isProviderEnabled got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 481
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 482
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 483
    .local v3, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v3, :cond_0

    .line 485
    monitor-enter v3

    .line 488
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 489
    .local v1, identity:J
    #calls: Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v3}, Lcom/android/server/LocationManagerService$Receiver;->access$700(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 490
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    monitor-exit v3

    .line 493
    .end local v1           #identity:J
    :cond_0
    return-void

    .line 491
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 4
    .parameter "provider"
    .parameter "criteria"

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1059
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 1061
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1063
    :cond_0
    invoke-interface {v0, p2}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    return v1
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 1597
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1601
    :try_start_0
    const-string v1, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeGpsStatusListener() is called ProcessName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationAppLookUtility:Lcom/android/server/location/LocationAppLookUtility;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/LocationAppLookUtility;->getAppName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v1, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1609
    return-void

    .line 1604
    :catch_0
    move-exception v0

    .line 1606
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1608
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1945
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1947
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    .line 1948
    monitor-exit v4

    .line 1962
    :goto_0
    return-void

    .line 1948
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1950
    :catch_0
    move-exception v2

    .line 1952
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1954
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1956
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1958
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1960
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2622
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2623
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2625
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2626
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2628
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2646
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2630
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2631
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2632
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2635
    const-string v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v3, :cond_2

    .line 2637
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2643
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2644
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    monitor-exit v4

    .line 2647
    return-void

    .line 2639
    :cond_2
    const-string v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v3, :cond_1

    .line 2641
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/ILocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1444
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1446
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1447
    monitor-exit v4

    .line 1461
    :goto_0
    return-void

    .line 1447
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1449
    :catch_0
    move-exception v2

    .line 1451
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1453
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1455
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1457
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1459
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdatesPI(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1467
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1469
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1470
    monitor-exit v4

    .line 1484
    :goto_0
    return-void

    .line 1470
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1472
    :catch_0
    move-exception v2

    .line 1474
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1476
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1478
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1480
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1482
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 4
    .parameter "location"
    .parameter "passive"

    .prologue
    const/4 v1, 0x1

    .line 2055
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2057
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires INSTALL_LOCATION_PROVIDER permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2060
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2061
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2062
    .local v0, m:Landroid/os/Message;
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2063
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2064
    return-void

    .line 2062
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/ILocationListener;)V
    .locals 12
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "listener"

    .prologue
    .line 1314
    if-eqz p2, :cond_0

    .line 1320
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1321
    if-nez p1, :cond_0

    .line 1323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no provider_s found for criteria"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1328
    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1330
    :try_start_1
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1331
    monitor-exit v11

    .line 1345
    :goto_0
    return-void

    .line 1331
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1333
    :catch_0
    move-exception v10

    .line 1335
    .local v10, se:Ljava/lang/SecurityException;
    throw v10

    .line 1337
    .end local v10           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    .line 1339
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    throw v9

    .line 1341
    .end local v9           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 1343
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "requestUpdates got exception:"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdatesPI(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V
    .locals 12
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "intent"

    .prologue
    .line 1349
    if-eqz p2, :cond_0

    .line 1355
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1356
    if-nez p1, :cond_0

    .line 1358
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no providers found for criteria"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1363
    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1365
    :try_start_1
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1366
    monitor-exit v11

    .line 1380
    :goto_0
    return-void

    .line 1366
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1368
    :catch_0
    move-exception v10

    .line 1370
    .local v10, se:Ljava/lang/SecurityException;
    throw v10

    .line 1372
    .end local v10           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    .line 1374
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    throw v9

    .line 1376
    .end local v9           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 1378
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "requestUpdates got exception:"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 681
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 682
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 683
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initialize()V

    .line 684
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 685
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 686
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1613
    if-nez p1, :cond_0

    .line 1617
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1620
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1622
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1624
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1627
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1629
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1630
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    .line 1632
    const/4 v1, 0x0

    monitor-exit v2

    .line 1635
    :goto_0
    return v1

    :cond_2
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1636
    .end local v0           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1641
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1643
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1647
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1652
    :goto_0
    return v1

    .line 1649
    :catch_0
    move-exception v0

    .line 1651
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2683
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2684
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2686
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2687
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2689
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2706
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2691
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2692
    .local v0, identity:J
    if-eqz p2, :cond_1

    .line 2694
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    .line 2695
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2696
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2704
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2706
    monitor-exit v4

    .line 2707
    return-void

    .line 2700
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    .line 2701
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2702
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 7
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 2651
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2652
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2654
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2655
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2657
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2664
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2661
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2662
    .local v0, identity:J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 2663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2664
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2665
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 2729
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2730
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2732
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2733
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2735
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2738
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2737
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 2738
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2739
    return-void
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 638
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "LocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 639
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 640
    return-void
.end method

.method public updateEPOFile()I
    .locals 3

    .prologue
    .line 2775
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2776
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 2778
    const-string v1, "LocationManagerService"

    const-string v2, "LocationProvider is null..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    const/4 v1, -0x1

    .line 2781
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->updateEPOFile()I

    move-result v1

    goto :goto_0
.end method
