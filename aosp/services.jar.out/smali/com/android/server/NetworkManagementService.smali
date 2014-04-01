.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;
    }
.end annotation


# static fields
.field private static final ADD:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT:Ljava/lang/String; = "default"

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field private static final REMOVE:I = 0x2

.field private static final SECONDARY:Ljava/lang/String; = "secondary"

.field private static final TAG:Ljava/lang/String; = "NetworkManagementService"


# instance fields
.field private mActiveAlertIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotaIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mQuotaLock:Ljava/lang/Object;

.field private mStartRequest:Z

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private mStopRequest:Z

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mUidRejectOnQuota:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 128
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 133
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotaIfaces:Ljava/util/HashSet;

    .line 139
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlertIfaces:Ljava/util/HashSet;

    .line 141
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 145
    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mStartRequest:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mStopRequest:Z

    .line 155
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    .line 158
    const-string v0, "simulator"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    const-string v2, "netd"

    const/16 v3, 0xa

    const-string v4, "NetdConnector"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 164
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "NetdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #array@config_tether_wifi_regexs#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isWifi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/NetworkManagementService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private convertQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x22

    .line 1049
    if-nez p1, :cond_0

    .line 1053
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/android/server/NetworkManagementService;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, service:Lcom/android/server/NetworkManagementService;
    const-string v1, "NetworkManagementService"

    const-string v2, "Creating NetworkManagementService"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, v0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 176
    const-string v1, "NetworkManagementService"

    const-string v2, "Awaiting socket connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, v0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 178
    const-string v1, "NetworkManagementService"

    const-string v2, "Connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-object v0
.end method

.method private getInterfaceCounter(Ljava/lang/String;Z)J
    .locals 11
    .parameter "iface"
    .parameter "rx"

    .prologue
    .line 1124
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "interface read%scounter %s"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p2, :cond_0

    const-string v6, "rx"

    :goto_0
    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object p1, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1136
    .local v4, rsp:Ljava/lang/String;
    :try_start_1
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1137
    .local v5, tok:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 1138
    const-string v7, "NetworkManagementService"

    const-string v8, "Malformed response for reading %s interface"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p2, :cond_1

    const-string v6, "rx"

    :goto_1
    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1140
    const-wide/16 v6, -0x1

    .line 1160
    .end local v4           #rsp:Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :goto_2
    return-wide v6

    .line 1129
    :cond_0
    :try_start_2
    const-string v6, "tx"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v2

    .line 1132
    .local v2, e1:Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    const-string v6, "NetworkManagementService"

    const-string v7, "Error communicating with native daemon"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 1138
    .end local v2           #e1:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4       #rsp:Ljava/lang/String;
    .restart local v5       #tok:[Ljava/lang/String;
    :cond_1
    const-string v6, "tx"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1145
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    .line 1150
    .local v0, code:I
    if-eqz p2, :cond_3

    const/16 v6, 0xd8

    if-ne v0, v6, :cond_4

    :cond_3
    if-nez p2, :cond_5

    const/16 v6, 0xd9

    if-eq v0, v6, :cond_5

    .line 1152
    :cond_4
    :try_start_5
    const-string v6, "NetworkManagementService"

    const-string v7, "Unexpected response code %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 1146
    .end local v0           #code:I
    :catch_1
    move-exception v3

    .line 1147
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "NetworkManagementService"

    const-string v7, "Error parsing code %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 1155
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #code:I
    :cond_5
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v6

    goto :goto_2

    .line 1156
    .end local v0           #code:I
    .end local v4           #rsp:Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1157
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "NetworkManagementService"

    const-string v8, "Failed to read interface %s counters"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p2, :cond_6

    const-string v6, "rx"

    :goto_3
    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1160
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 1157
    :cond_6
    const-string v6, "tx"

    goto :goto_3
.end method

.method private getInterfaceThrottle(Ljava/lang/String;Z)I
    .locals 10
    .parameter "iface"
    .parameter "rx"

    .prologue
    .line 1441
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "interface getthrottle %s %s"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v8, v5

    const/4 v9, 0x1

    if-eqz p2, :cond_0

    const-string v5, "rx"

    :goto_0
    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1454
    .local v3, rsp:Ljava/lang/String;
    :try_start_1
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1455
    .local v4, tok:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 1456
    const-string v5, "NetworkManagementService"

    const-string v6, "Malformed response to getthrottle command"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1457
    const/4 v5, -0x1

    .line 1477
    .end local v3           #rsp:Ljava/lang/String;
    .end local v4           #tok:[Ljava/lang/String;
    :goto_1
    return v5

    .line 1446
    :cond_0
    :try_start_2
    const-string v5, "tx"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1449
    :catch_0
    move-exception v1

    .line 1450
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    const-string v5, "NetworkManagementService"

    const-string v6, "Error communicating with native daemon to getthrottle"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1451
    const/4 v5, -0x1

    goto :goto_1

    .line 1462
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #rsp:Ljava/lang/String;
    .restart local v4       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    :try_start_4
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    .line 1467
    .local v0, code:I
    if-eqz p2, :cond_2

    const/16 v5, 0xda

    if-ne v0, v5, :cond_3

    :cond_2
    if-nez p2, :cond_4

    const/16 v5, 0xdb

    if-eq v0, v5, :cond_4

    .line 1469
    :cond_3
    :try_start_5
    const-string v5, "NetworkManagementService"

    const-string v6, "Unexpected response code %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v5, -0x1

    goto :goto_1

    .line 1463
    .end local v0           #code:I
    :catch_1
    move-exception v2

    .line 1464
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v5, "NetworkManagementService"

    const-string v6, "Error parsing code %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v4, v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v5, -0x1

    goto :goto_1

    .line 1472
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #code:I
    :cond_4
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v5

    goto :goto_1

    .line 1473
    .end local v0           #code:I
    .end local v3           #rsp:Ljava/lang/String;
    .end local v4           #tok:[Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1474
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "NetworkManagementService"

    const-string v7, "Failed to read interface %s throttle value"

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-eqz p2, :cond_5

    const-string v5, "rx"

    :goto_2
    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    const/4 v5, -0x1

    goto :goto_1

    .line 1474
    :cond_5
    const-string v5, "tx"

    goto :goto_2
.end method

.method private getNetworkStatsTethering(Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStats$Entry;
    .locals 9
    .parameter "ifaceIn"
    .parameter "ifaceOut"

    .prologue
    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1385
    .local v1, command:Ljava/lang/StringBuilder;
    const-string v6, "bandwidth gettetherstats "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    .local v4, rsp:Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1396
    .local v5, tok:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    .line 1397
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Native daemon returned unexpected result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1390
    .end local v4           #rsp:Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1391
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Error communicating to native daemon"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1402
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4       #rsp:Ljava/lang/String;
    .restart local v5       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1407
    .local v0, code:I
    const/16 v6, 0xdd

    if-eq v0, v6, :cond_1

    .line 1408
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected return code from native daemon for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1403
    .end local v0           #code:I
    :catch_1
    move-exception v2

    .line 1404
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse native daemon return code for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1413
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #code:I
    :cond_1
    :try_start_2
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1414
    .local v3, entry:Landroid/net/NetworkStats$Entry;
    iput-object p1, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1415
    const/4 v6, -0x5

    iput v6, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1416
    const/4 v6, 0x0

    iput v6, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 1417
    const/4 v6, 0x0

    iput v6, v3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1418
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1419
    const/4 v6, 0x4

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1420
    const/4 v6, 0x5

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1421
    const/4 v6, 0x6

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1422
    return-object v3

    .line 1423
    .end local v3           #entry:Landroid/net/NetworkStats$Entry;
    :catch_2
    move-exception v2

    .line 1424
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem parsing tethering stats for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 1057
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1063
    :pswitch_0
    const-string v0, "open"

    :goto_0
    return-object v0

    .line 1059
    :pswitch_1
    const-string v0, "wpa-psk"

    goto :goto_0

    .line 1061
    :pswitch_2
    const-string v0, "wpa2-psk"

    goto :goto_0

    .line 1057
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isWifi(Ljava/lang/String;)Z
    .locals 5
    .parameter "iface"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 184
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 186
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 183
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "cmd"
    .parameter "internalInterface"
    .parameter "externalInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 920
    const-string v5, "nat %s %s %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 924
    .local v4, internalNetworkInterface:Ljava/net/NetworkInterface;
    if-nez v4, :cond_1

    .line 925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 937
    :cond_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, p1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 938
    return-void

    .line 927
    :cond_1
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    .line 929
    .local v3, interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 930
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 931
    .local v2, ia:Ljava/net/InterfaceAddress;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v6

    invoke-static {v5, v6}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 933
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 934
    goto :goto_0
.end method

.method private modifyRoute(Ljava/lang/String;ILandroid/net/RouteInfo;Ljava/lang/String;)V
    .locals 9
    .parameter "interfaceName"
    .parameter "action"
    .parameter "route"
    .parameter "type"

    .prologue
    const/16 v8, 0x20

    .line 570
    packed-switch p2, :pswitch_data_0

    .line 582
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown action type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 573
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface route add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, cmd:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v3

    .line 587
    .local v3, la:Landroid/net/LinkAddress;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    if-nez v6, :cond_1

    .line 593
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 594
    const-string v6, "0.0.0.0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 610
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 611
    .local v4, line:Ljava/lang/String;
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add route response is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 578
    .end local v0           #cmd:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #la:Landroid/net/LinkAddress;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface route remove "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .restart local v0       #cmd:Ljava/lang/StringBuilder;
    goto/16 :goto_0

    .line 596
    .restart local v3       #la:Landroid/net/LinkAddress;
    :cond_0
    const-string v6, "::0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 599
    :cond_1
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to communicate with native dameon to add routes - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 614
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"

    .prologue
    .line 252
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    .line 254
    .local v2, obs:Landroid/net/INetworkManagementEventObserver;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "NetworkManagementService"

    const-string v4, "Observer notifier failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 259
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #obs:Landroid/net/INetworkManagementEventObserver;
    :cond_0
    return-void
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 5
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 239
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    .line 241
    .local v2, obs:Landroid/net/INetworkManagementEventObserver;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "NetworkManagementService"

    const-string v4, "Observer notifier failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 246
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #obs:Landroid/net/INetworkManagementEventObserver;
    :cond_0
    return-void
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .locals 6
    .parameter "iface"

    .prologue
    .line 265
    move-object v2, p1

    .line 266
    .local v2, ifacename:Ljava/lang/String;
    new-instance v4, Lcom/android/server/NetworkManagementService$1;

    invoke-direct {v4, p0, v2}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/NetworkManagementService$1;->start()V

    .line 277
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveAlertIfaces:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotaIfaces:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 280
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    .line 282
    .local v3, obs:Landroid/net/INetworkManagementEventObserver;
    :try_start_0
    invoke-interface {v3, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "NetworkManagementService"

    const-string v5, "Observer notifier failed"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 287
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #obs:Landroid/net/INetworkManagementEventObserver;
    :cond_0
    return-void
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    .line 227
    .local v2, obs:Landroid/net/INetworkManagementEventObserver;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "NetworkManagementService"

    const-string v4, "Observer notifier failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #obs:Landroid/net/INetworkManagementEventObserver;
    :cond_0
    return-void
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 293
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    .line 295
    .local v2, obs:Landroid/net/INetworkManagementEventObserver;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "NetworkManagementService"

    const-string v4, "Observer notifier failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #obs:Landroid/net/INetworkManagementEventObserver;
    :cond_0
    return-void
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    const/4 v1, 0x0

    .line 618
    .local v1, fstream:Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 622
    .end local v1           #fstream:Ljava/io/FileInputStream;
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 623
    .local v3, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 628
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, s:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 629
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 631
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v5           #s:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 634
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #fstream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 636
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 641
    :cond_0
    :goto_2
    return-object v4

    .line 634
    .end local v1           #fstream:Ljava/io/FileInputStream;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v5       #s:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 636
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    .line 639
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #fstream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 634
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v5           #s:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_3

    .line 636
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 634
    :cond_3
    :goto_5
    throw v6

    .line 637
    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_5

    .end local v1           #fstream:Ljava/io/FileInputStream;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v5       #s:Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 634
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v5           #s:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 631
    :catch_4
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 3
    .parameter "interfaceName"
    .parameter "route"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x1

    const-string v1, "default"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;ILandroid/net/RouteInfo;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 3
    .parameter "interfaceName"
    .parameter "route"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    const-string v1, "secondary"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;ILandroid/net/RouteInfo;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tty"
    .parameter "localAddr"
    .parameter "remoteAddr"
    .parameter "dns1Addr"
    .parameter "dns2Addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppd attach %s %s %s %s %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 994
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error resolving addr"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 991
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 992
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error communicating to native daemon to attach pppd"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v2, "interface clearaddrs %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    return-void

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with native daemon to interface clearallips - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public detachPppd(Ljava/lang/String;)V
    .locals 5
    .parameter "tty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppd detach %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error communicating to native daemon to detach pppd"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface ipv6 %s disable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for disabling ipv6"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disableMultiRouter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "internalInterface"
    .parameter "externalInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1647
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "MultiRouter disable %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    return-void

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for disabling MultiRouter interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "internalInterface"
    .parameter "externalInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :try_start_0
    const-string v1, "disable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableNat got Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for disabling NAT interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1557
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const-string v2, "Bandwidth control enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1561
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1562
    :try_start_0
    const-string v2, "Active quota ifaces: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotaIfaces:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    const-string v2, "Active alert ifaces: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlertIfaces:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    .line 1567
    :try_start_1
    const-string v2, "UID reject on quota ifaces: ["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1569
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1570
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1571
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1569
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1564
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1573
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_1
    :try_start_3
    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    monitor-exit v3

    .line 1575
    return-void

    .line 1574
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface ipv6 %s enable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for enabling ipv6"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableMultiRouter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "internalInterface"
    .parameter "externalInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1631
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "MultiRouter enable %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    return-void

    .line 1636
    :catch_0
    move-exception v0

    .line 1637
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for enabling MultiRouter interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "internalInterface"
    .parameter "externalInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNat("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :try_start_0
    const-string v1, "enable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNat got Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for enabling NAT interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flushDefaultDnsCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1523
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :try_start_0
    const-string v0, "resolver flushdefaultif"

    .line 1528
    .local v0, cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    return-void

    .line 1529
    .end local v0           #cmd:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1530
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error communicating with native deamon to flush default interface"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public flushInterfaceDnsCache(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1536
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolver flushif "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    return-void

    .line 1542
    .end local v0           #cmd:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1543
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error communicating with native daemon to flush interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether dns list"

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for listing tether dns"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 16
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.ACCESS_NETWORK_STATE"

    const-string v13, "NetworkManagementService"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "interface getcfg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 400
    .local v9, rsp:Ljava/lang/String;
    const-string v11, "NetworkManagementService"

    const-string v12, "rsp <%s>"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v10, Ljava/util/StringTokenizer;

    invoke-direct {v10, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 408
    .local v10, st:Ljava/util/StringTokenizer;
    :try_start_1
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 409
    .local v3, code:I
    const/16 v11, 0xd5

    if-eq v3, v11, :cond_0

    .line 410
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Expected code %d, but got %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/16 v15, 0xd5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 414
    .end local v3           #code:I
    :catch_0
    move-exception v6

    .line 415
    .local v6, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Invalid response from daemon (%s)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    .line 437
    .end local v6           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v7

    .line 438
    .local v7, nsee:Ljava/util/NoSuchElementException;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Invalid response from daemon (%s)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 396
    .end local v7           #nsee:Ljava/util/NoSuchElementException;
    .end local v9           #rsp:Ljava/lang/String;
    .end local v10           #st:Ljava/util/StringTokenizer;
    :catch_2
    move-exception v4

    .line 397
    .local v4, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot communicate with native daemon to get interface config"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 419
    .end local v4           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #code:I
    .restart local v9       #rsp:Ljava/lang/String;
    .restart local v10       #st:Ljava/util/StringTokenizer;
    :cond_0
    :try_start_3
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 420
    .local v2, cfg:Landroid/net/InterfaceConfiguration;
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/InterfaceConfiguration;->hwAddr:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, addr:Ljava/net/InetAddress;
    const/4 v8, 0x0

    .line 424
    .local v8, prefixLength:I
    :try_start_4
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 430
    :goto_0
    :try_start_5
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v8

    .line 435
    :goto_1
    :try_start_6
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v1, v8}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v11, v2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 436
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "]"

    invoke-virtual {v10, v12}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_1

    .line 441
    const-string v11, "NetworkManagementService"

    const-string v12, "flags <%s>"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-object v2

    .line 425
    :catch_3
    move-exception v5

    .line 426
    .local v5, iae:Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v11, "NetworkManagementService"

    const-string v12, "Failed to parse ipaddr"

    invoke-static {v11, v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 431
    .end local v5           #iae:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v6

    .line 432
    .restart local v6       #nfe:Ljava/lang/NumberFormatException;
    const-string v11, "NetworkManagementService"

    const-string v12, "Failed to parse prefixLength"

    invoke-static {v11, v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public getInterfaceRxThrottle(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1481
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->getInterfaceThrottle(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getInterfaceTxThrottle(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1485
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->getInterfaceThrottle(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getIpForwardingEnabled()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 729
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "ipfwd status"

    invoke-virtual {v7, v8}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 740
    .local v4, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 741
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 742
    .local v5, tok:[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    .line 743
    const-string v7, "NetworkManagementService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed response from native daemon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :goto_0
    return v6

    .line 735
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 736
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to communicate with native daemon to ipfwd status"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 747
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #tok:[Ljava/lang/String;
    :cond_0
    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 748
    .local v0, code:I
    const/16 v7, 0xd3

    if-ne v0, v7, :cond_1

    .line 750
    const-string v6, "enabled"

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 752
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unexpected response code %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 755
    .end local v0           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Got an empty response"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 3

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkStatsSummary()Landroid/net/NetworkStats;
    .locals 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;
    .locals 7
    .parameter "ifacePairs"

    .prologue
    .line 1364
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    const-string v6, "NetworkManagementService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    array-length v4, p1

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 1368
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected ifacePairs; length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1372
    :cond_0
    new-instance v3, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1373
    .local v3, stats:Landroid/net/NetworkStats;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 1374
    aget-object v1, p1, v0

    .line 1375
    .local v1, ifaceIn:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v2, p1, v4

    .line 1376
    .local v2, ifaceOut:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1377
    invoke-direct {p0, v1, v2}, Lcom/android/server/NetworkManagementService;->getNetworkStatsTethering(Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1373
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1380
    .end local v1           #ifaceIn:Ljava/lang/String;
    .end local v2           #ifaceOut:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    .locals 3
    .parameter "uid"

    .prologue
    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;
    .locals 22
    .parameter "interfaceName"

    .prologue
    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.ACCESS_NETWORK_STATE"

    const-string v21, "NetworkManagementService"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v17, routes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    const-string v19, "/proc/net/route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/NetworkManagementService;->readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 651
    .local v18, s:Ljava/lang/String;
    const-string v19, "\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 653
    .local v5, fields:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 654
    const/16 v19, 0x0

    aget-object v11, v5, v19

    .line 656
    .local v11, iface:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 657
    const/16 v19, 0x1

    aget-object v2, v5, v19

    .line 658
    .local v2, dest:Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v7, v5, v19

    .line 659
    .local v7, gate:Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v6, v5, v19

    .line 660
    .local v6, flags:Ljava/lang/String;
    const/16 v19, 0x7

    aget-object v13, v5, v19

    .line 663
    .local v13, mask:Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_0
    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    .line 665
    .local v3, destAddr:Ljava/net/InetAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v15

    .line 668
    .local v15, prefixLength:I
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 671
    .local v12, linkAddress:Landroid/net/LinkAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    .line 674
    .local v9, gatewayAddr:Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 675
    .local v16, route:Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    .end local v3           #destAddr:Ljava/net/InetAddress;
    .end local v9           #gatewayAddr:Ljava/net/InetAddress;
    .end local v12           #linkAddress:Landroid/net/LinkAddress;
    .end local v15           #prefixLength:I
    .end local v16           #route:Landroid/net/RouteInfo;
    :catch_0
    move-exception v4

    .line 677
    .local v4, e:Ljava/lang/Exception;
    const-string v19, "NetworkManagementService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    .end local v2           #dest:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #fields:[Ljava/lang/String;
    .end local v6           #flags:Ljava/lang/String;
    .end local v7           #gate:Ljava/lang/String;
    .end local v11           #iface:Ljava/lang/String;
    .end local v13           #mask:Ljava/lang/String;
    .end local v18           #s:Ljava/lang/String;
    :cond_1
    const-string v19, "/proc/net/ipv6_route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/NetworkManagementService;->readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 687
    .restart local v18       #s:Ljava/lang/String;
    const-string v19, "\\s+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 688
    .restart local v5       #fields:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 689
    const/16 v19, 0x9

    aget-object v19, v5, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 690
    .restart local v11       #iface:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 691
    const/16 v19, 0x0

    aget-object v2, v5, v19

    .line 692
    .restart local v2       #dest:Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v14, v5, v19

    .line 693
    .local v14, prefix:Ljava/lang/String;
    const/16 v19, 0x4

    aget-object v7, v5, v19

    .line 697
    .restart local v7       #gate:Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_1
    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 701
    .restart local v15       #prefixLength:I
    invoke-static {v2}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 702
    .restart local v3       #destAddr:Ljava/net/InetAddress;
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 704
    .restart local v12       #linkAddress:Landroid/net/LinkAddress;
    invoke-static {v7}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 706
    .local v8, gateAddr:Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 707
    .restart local v16       #route:Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 708
    .end local v3           #destAddr:Ljava/net/InetAddress;
    .end local v8           #gateAddr:Ljava/net/InetAddress;
    .end local v12           #linkAddress:Landroid/net/LinkAddress;
    .end local v15           #prefixLength:I
    .end local v16           #route:Landroid/net/RouteInfo;
    :catch_1
    move-exception v4

    .line 709
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v19, "NetworkManagementService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 715
    .end local v2           #dest:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #fields:[Ljava/lang/String;
    .end local v7           #gate:Ljava/lang/String;
    .end local v11           #iface:Ljava/lang/String;
    .end local v14           #prefix:Ljava/lang/String;
    .end local v18           #s:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/RouteInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/net/RouteInfo;

    check-cast v19, [Landroid/net/RouteInfo;

    return-object v19
.end method

.method public getSoftApPreferredChannel()[Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 765
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "softap getchannellist"

    invoke-virtual {v7, v8}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 775
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 776
    .local v4, line:Ljava/lang/String;
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 777
    .local v6, tok:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 780
    :cond_0
    aget-object v7, v6, v11

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 781
    .local v1, code:I
    const/16 v7, 0xd6

    if-ne v1, v7, :cond_2

    .line 783
    aget-object v7, v6, v10

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, channel:[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 785
    const/4 v0, 0x0

    .line 787
    .end local v0           #channel:[Ljava/lang/String;
    :cond_1
    return-object v0

    .line 770
    .end local v1           #code:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 771
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to communicate to native daemon to get softap preferred channel list"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 790
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1       #code:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tok:[Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unexpected response code %d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 793
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Got an empty response"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getStartRequest()Z
    .locals 1

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mStartRequest:Z

    return v0
.end method

.method public isBandwidthControlEnabled()Z
    .locals 3

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    return v0
.end method

.method public isTetheringStarted()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 825
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "tether status"

    invoke-virtual {v6, v7}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 836
    .local v4, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 837
    .local v3, line:Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, tok:[Ljava/lang/String;
    array-length v6, v5

    if-ge v6, v9, :cond_0

    .line 839
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed response for tether status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 831
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 832
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to communicate to native daemon to get tether status"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 841
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #tok:[Ljava/lang/String;
    :cond_0
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 842
    .local v0, code:I
    const/16 v6, 0xd2

    if-ne v0, v6, :cond_1

    .line 845
    const-string v6, "started"

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 847
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unexpected response code %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 850
    .end local v0           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Got an empty response"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public listInterfaces()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface list"

    const/16 v3, 0x6e

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot communicate with native daemon to list interfaces"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether interface list"

    const/16 v3, 0x6f

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for listing tether interfaces"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public listTtys()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "list_ttys"

    const/16 v3, 0x71

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for listing TTYs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 1553
    :cond_0
    return-void
.end method

.method protected onDaemonConnected()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "NetworkManagementService"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 308
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 2
    .parameter "obs"

    .prologue
    .line 212
    const-string v0, "NetworkManagementService"

    const-string v1, "Registering observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"

    .prologue
    .line 1267
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v2, :cond_0

    .line 1290
    :goto_0
    return-void

    .line 1273
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1274
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlertIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1276
    monitor-exit v3

    goto :goto_0

    .line 1289
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1279
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1280
    .local v0, command:Ljava/lang/StringBuilder;
    const-string v2, "bandwidth removeinterfacealert "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1284
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1285
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlertIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1289
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1286
    :catch_0
    move-exception v1

    .line 1287
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Error communicating to native daemon"

    invoke-direct {v2, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"

    .prologue
    .line 1205
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v2, :cond_0

    .line 1231
    :goto_0
    return-void

    .line 1211
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1212
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotaIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1214
    monitor-exit v3

    goto :goto_0

    .line 1230
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1217
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1218
    .local v0, command:Ljava/lang/StringBuilder;
    const-string v2, "bandwidth removeiquota "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotaIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1221
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlertIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1230
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1226
    :catch_0
    move-exception v1

    .line 1228
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Error communicating to native daemon"

    invoke-direct {v2, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 3
    .parameter "interfaceName"
    .parameter "route"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x2

    const-string v1, "default"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;ILandroid/net/RouteInfo;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 3
    .parameter "interfaceName"
    .parameter "route"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v0, 0x2

    const-string v1, "secondary"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;ILandroid/net/RouteInfo;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public restartAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "wifiConfig"
    .parameter "wlanIface"
    .parameter "softapIface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1588
    const-string v2, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restartAccessPoint, mStopRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/NetworkManagementService;->mStopRequest:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mStopRequest:Z

    if-nez v2, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    if-nez p1, :cond_1

    .line 1596
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "softap set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1619
    :goto_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "softap startap"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1624
    :cond_0
    return-void

    .line 1610
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "softap set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %s %s %s %s %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/NetworkManagementService;->convertQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/NetworkManagementService;->convertQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1617
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1620
    .end local v1           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1621
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error communicating to native daemon to start softap"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "wifiConfig"
    .parameter "wlanIface"
    .parameter "softapIface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1100
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    if-nez p1, :cond_0

    .line 1106
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "softap set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1121
    :goto_0
    return-void

    .line 1108
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "softap set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %s %s %s %s %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/NetworkManagementService;->convertQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/NetworkManagementService;->convertQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1117
    .end local v1           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1118
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error communicating to native daemon to set soft AP"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDefaultInterfaceForDns(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1489
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolver setdefaultif "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    return-void

    .line 1495
    .end local v0           #cmd:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1496
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error communicating with native daemon to set default interface"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDnsForwarders([Ljava/lang/String;)V
    .locals 9
    .parameter "dns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 888
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CHANGE_NETWORK_STATE"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :try_start_0
    const-string v1, "tether dns set"

    .line 892
    .local v1, cmd:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 893
    .local v5, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 892
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 896
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 904
    return-void

    .line 897
    :catch_0
    move-exception v2

    .line 898
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    :try_start_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to communicate to native daemon for setting tether dns"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 901
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_1
    move-exception v2

    .line 902
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Error resolving dns name"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "iface"
    .parameter "servers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1503
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.CHANGE_NETWORK_STATE"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolver setifdns "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1507
    .local v2, cmd:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 1508
    .local v6, s:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1509
    .local v0, a:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1510
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1507
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1513
    .end local v0           #a:Ljava/net/InetAddress;
    .end local v6           #s:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1520
    return-void

    .line 1514
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #cmd:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v3

    .line 1515
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Error setting dnsn for interface"

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1516
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 1517
    .local v3, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Error communicating with native daemon to set dns for interface"

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public setGlobalAlert(J)V
    .locals 5
    .parameter "alertBytes"

    .prologue
    .line 1294
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v2, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1301
    .local v0, command:Ljava/lang/StringBuilder;
    const-string v2, "bandwidth setglobalalert "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1304
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1305
    :catch_0
    move-exception v1

    .line 1306
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error communicating to native daemon"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .locals 6
    .parameter "iface"
    .parameter "alertBytes"

    .prologue
    .line 1235
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v2, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1242
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotaIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1243
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "setting alert requires existing quota on iface"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1246
    :cond_1
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1247
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlertIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1248
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already has alert"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1262
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1251
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1252
    .local v0, command:Ljava/lang/StringBuilder;
    const-string v2, "bandwidth setinterfacealert "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1258
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlertIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1262
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v1

    .line 1260
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Error communicating to native daemon"

    invoke-direct {v2, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 7
    .parameter "iface"
    .parameter "cfg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    const-string v5, "NetworkManagementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v3, "NetworkManagementService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInterfaceConfig, iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mStopRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mStopRequest:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStopRequest:Z

    if-eqz v3, :cond_0

    .line 468
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v2, p2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 455
    .local v2, linkAddr:Landroid/net/LinkAddress;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_2

    .line 456
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Null LinkAddress given"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    :cond_2
    const-string v3, "interface setcfg %s %s %d %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to communicate with native daemon to interface setcfg - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 474
    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    iget-object v2, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v3, "up"

    const-string v4, "down"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 475
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    return-void

    .line 476
    .end local v1           #ifcg:Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with native daemon for interface down - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 6
    .parameter "iface"
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v3, "interface ipv6privacyextensions %s %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    const-string v2, "enable"

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    return-void

    .line 497
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    const-string v2, "disable"

    goto :goto_0

    .line 501
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 502
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with native daemon to set ipv6privacyextensions - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 6
    .parameter "iface"
    .parameter "quotaBytes"

    .prologue
    .line 1179
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v2, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1186
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotaIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1187
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already has quota"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1200
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1190
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1191
    .local v0, command:Ljava/lang/StringBuilder;
    const-string v2, "bandwidth setiquota "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1196
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotaIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1200
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1197
    :catch_0
    move-exception v1

    .line 1198
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Error communicating to native daemon"

    invoke-direct {v2, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setInterfaceThrottle(Ljava/lang/String;II)V
    .locals 6
    .parameter "iface"
    .parameter "rxKbps"
    .parameter "txKbps"

    .prologue
    .line 1430
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface setthrottle %s %d %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    :goto_0
    return-void

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagementService"

    const-string v2, "Error communicating with native daemon to set throttle"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 486
    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    iget-object v2, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v3, "down"

    const-string v4, "up"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 487
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    return-void

    .line 488
    .end local v1           #ifcg:Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with native daemon for interface up - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setIpForwardingEnabled(Z)V
    .locals 5
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "ipfwd %sable"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v0, "en"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 762
    return-void

    .line 761
    :cond_0
    const-string v0, "dis"

    goto :goto_0
.end method

.method public setStartRequest(Z)V
    .locals 0
    .parameter "start"

    .prologue
    .line 1583
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mStartRequest:Z

    .line 1584
    return-void
.end method

.method public setUidNetworkRules(IZ)V
    .locals 6
    .parameter "uid"
    .parameter "rejectOnQuotaInterfaces"

    .prologue
    .line 1312
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkManagementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v3, :cond_0

    .line 1345
    :goto_0
    return-void

    .line 1318
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    monitor-enter v4

    .line 1319
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 1320
    .local v2, oldRejectOnQuota:Z
    if-ne v2, p2, :cond_1

    .line 1322
    monitor-exit v4

    goto :goto_0

    .line 1344
    .end local v2           #oldRejectOnQuota:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1325
    .restart local v2       #oldRejectOnQuota:Z
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1326
    .local v0, command:Ljava/lang/StringBuilder;
    const-string v3, "bandwidth"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    if-eqz p2, :cond_2

    .line 1328
    const-string v3, " addnaughtyapps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    :goto_1
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1336
    if-eqz p2, :cond_3

    .line 1337
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1344
    :goto_2
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 1330
    :cond_2
    const-string v3, " removenaughtyapps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1339
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1341
    :catch_0
    move-exception v1

    .line 1342
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Error communicating to native daemon"

    invoke-direct {v3, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SHUTDOWN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    const-string v0, "NetworkManagementService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void
.end method

.method public startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "wifiConfig"
    .parameter "wlanIface"
    .parameter "softapIface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1008
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iput-boolean v6, p0, Lcom/android/server/NetworkManagementService;->mStartRequest:Z

    .line 1013
    iput-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mStopRequest:Z

    .line 1016
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "softap start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1017
    if-nez p1, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "softap set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1041
    :goto_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "softap startap"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1045
    return-void

    .line 1032
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "softap set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %s %s %s %s %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/NetworkManagementService;->convertQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/NetworkManagementService;->convertQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1042
    .end local v1           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1043
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error communicating to native daemon to start softap"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startTethering([Ljava/lang/String;)V
    .locals 9
    .parameter "dhcpRange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CHANGE_NETWORK_STATE"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v1, "tether start"

    .line 803
    .local v1, cmd:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 804
    .local v2, d:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 808
    .end local v2           #d:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    return-void

    .line 809
    :catch_0
    move-exception v3

    .line 810
    .local v3, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to communicate to native daemon"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public stopAccessPoint(Ljava/lang/String;)V
    .locals 4
    .parameter "wlanIface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mStartRequest:Z

    .line 1087
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mStopRequest:Z

    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "softap stopap"

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1090
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "softap stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    return-void

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error communicating to native daemon to stop soft AP"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopTethering()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether stop"

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon to stop tether"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public systemReady()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 192
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/net/xt_qtaguid/ctrl"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    .line 193
    .local v1, hasKernelSupport:Z
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "netstats_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    .local v2, shouldEnable:Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 197
    const-string v3, "NetworkManagementService"

    const-string v4, "enabling bandwidth control"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "bandwidth enable"

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 200
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    const-string v4, "net.qtaguid_enabled"

    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_2
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void

    .line 193
    .end local v2           #shouldEnable:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 201
    .restart local v2       #shouldEnable:Z
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "NetworkManagementService"

    const-string v4, "problem enabling bandwidth controls"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 205
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    const-string v3, "NetworkManagementService"

    const-string v4, "not enabling bandwidth control"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_2
    const-string v3, "0"

    goto :goto_2
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .locals 4
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tether interface add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for adding tether interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 2
    .parameter "obs"

    .prologue
    .line 217
    const-string v0, "NetworkManagementService"

    const-string v1, "Unregistering observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .locals 4
    .parameter "iface"

    .prologue
    .line 865
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tether interface remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for removing tether interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "wlanIface"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "softap fwreload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    return-void

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error communicating to native daemon "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
