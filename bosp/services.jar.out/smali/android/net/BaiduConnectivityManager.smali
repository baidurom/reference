.class public Landroid/net/BaiduConnectivityManager;
.super Landroid/net/ConnectivityManager;
.source "BaiduConnectivityManager.java"


# static fields
.field public static final EXTRA_SIM_ID:Ljava/lang/String; = "simId"

.field private static final TAG:Ljava/lang/String; = "BaiduConnectivityManager"

.field private static final sInstance:Landroid/net/BaiduConnectivityManager;

.field private static sService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/net/BaiduConnectivityManager;

    invoke-direct {v0}, Landroid/net/BaiduConnectivityManager;-><init>()V

    sput-object v0, Landroid/net/BaiduConnectivityManager;->sInstance:Landroid/net/BaiduConnectivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    .line 71
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    sput-object v0, Landroid/net/BaiduConnectivityManager;->sService:Landroid/net/IConnectivityManager;

    .line 72
    return-void
.end method

.method public static getDefault()Landroid/net/BaiduConnectivityManager;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/net/BaiduConnectivityManager;->sInstance:Landroid/net/BaiduConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public getMobileDataEnabledBaidu(Landroid/content/Context;J)Z
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isTetheringChangeDone()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public setMobileDataEnabledBaidu(Landroid/content/Context;J)Z
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public startUsingNetworkFeatureBaidu(ILjava/lang/String;I)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 96
    const/4 v0, 0x3

    return v0
.end method

.method public stopUsingNetworkFeatureBaidu(ILjava/lang/String;I)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 112
    const/4 v0, 0x3

    return v0
.end method
