.class public abstract Landroid/net/BaseNetworkStateTracker;
.super Ljava/lang/Object;
.source "BaseNetworkStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field public static final PROP_TCP_BUFFER_UNKNOWN:Ljava/lang/String; = "net.tcp.buffersize.unknown"

.field public static final PROP_TCP_BUFFER_WIFI:Ljava/lang/String; = "net.tcp.buffersize.wifi"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mLinkCapabilities:Landroid/net/LinkCapabilities;

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "networkType"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, -0x1

    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 55
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 56
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 57
    return-void
.end method


# virtual methods
.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 141
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    return-void
.end method

.method protected final dispatchConfigurationChanged()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    return-void
.end method

.method protected final dispatchStateChanged()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    return-void
.end method

.method public final getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public final getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public final getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method protected getTargetHandler()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 157
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 122
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    .line 151
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 117
    return-void
.end method

.method public final startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 76
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    .line 78
    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->startMonitoringInternal()V

    .line 79
    return-void
.end method

.method protected abstract startMonitoringInternal()V
.end method
