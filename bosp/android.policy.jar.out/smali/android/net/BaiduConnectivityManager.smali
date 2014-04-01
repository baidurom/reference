.class public Landroid/net/BaiduConnectivityManager;
.super Landroid/net/ConnectivityManager;
.source "BaiduConnectivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaiduConnectivityManager"

.field private static final sInstance:Landroid/net/BaiduConnectivityManager;

.field private static sService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/net/BaiduConnectivityManager;

    invoke-direct {v0}, Landroid/net/BaiduConnectivityManager;-><init>()V

    sput-object v0, Landroid/net/BaiduConnectivityManager;->sInstance:Landroid/net/BaiduConnectivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    .line 63
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    sput-object v0, Landroid/net/BaiduConnectivityManager;->sService:Landroid/net/IConnectivityManager;

    .line 64
    return-void
.end method

.method public static getDefault()Landroid/net/BaiduConnectivityManager;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/net/BaiduConnectivityManager;->sInstance:Landroid/net/BaiduConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public getMobileDataEnabledBaidu(Landroid/content/Context;J)Z
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 116
    invoke-super {p0, p2, p3}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(J)Z

    move-result v0

    return v0
.end method

.method public setMobileDataEnabledBaidu(Landroid/content/Context;J)Z
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 128
    invoke-super {p0, p2, p3}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    move-result v0

    return v0
.end method

.method public startUsingNetworkFeatureBaidu(ILjava/lang/String;I)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public stopUsingNetworkFeatureBaidu(ILjava/lang/String;I)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method
