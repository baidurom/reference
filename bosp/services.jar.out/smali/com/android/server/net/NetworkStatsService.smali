.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$UidStatsKey;,
        Lcom/android/server/net/NetworkStatsService$QuickbootBroadcastReceiver;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final ENABLE_SAMPLE_AFTER_POLL:Z = true

.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final IFACE_GEMINI:Ljava/lang/String; = "duiface"

#the value of this static final field might be set in the static constructor
.field static final IS_USER_BUILD:Z = false

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static final USE_TRUESTED_TIME:Z = true

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3


# instance fields
.field private mActiveIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mAlarmManager:Landroid/app/IAlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDUHelper:Landroid/content/BroadcastReceiver;

.field private mDataActivedSimId:J

.field private mDropBox:Landroid/os/DropBoxManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

.field private mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

.field private mLastPersistUidSnapshot:Landroid/net/NetworkStats;

.field private mLastPhoneNetworkType:I

.field private mLastPhoneState:I

.field private mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

.field private mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

.field private mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

.field private mLastPollUidSnapshot:Landroid/net/NetworkStats;

.field private final mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

.field private mNetworkDevStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNetworkStatsLoaded:Z

.field private final mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

.field private mNetworkXtStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mOperations:Landroid/net/NetworkStats;

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mQbReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId1:J

.field private mSimId2:J

.field private mSimIdCount:I

.field private final mStatsLock:Ljava/lang/Object;

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private final mUidFile:Lcom/android/internal/os/AtomicFile;

.field private mUidStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkStatsService$UidStatsKey;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mUidStatsLoaded:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->IS_USER_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .locals 7
    .parameter "context"
    .parameter "networkManager"
    .parameter "alarmManager"

    .prologue
    .line 270
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v4

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getSystemDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, p1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V
    .locals 6
    .parameter "context"
    .parameter "networkManager"
    .parameter "alarmManager"
    .parameter "time"
    .parameter "systemDir"
    .parameter "settings"

    .prologue
    const/4 v5, 0x0

    .line 284
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 222
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    .line 227
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    .line 229
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    .line 231
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    .line 234
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 236
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 248
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 251
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    .line 384
    new-instance v1, Lcom/android/server/net/NetworkStatsService$QuickbootBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkStatsService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mQbReceiver:Landroid/content/BroadcastReceiver;

    .line 800
    new-instance v1, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDUHelper:Landroid/content/BroadcastReceiver;

    .line 816
    new-instance v1, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 828
    new-instance v1, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 837
    new-instance v1, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 849
    new-instance v1, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 867
    new-instance v1, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    new-instance v1, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 899
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    .line 900
    iput v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    .line 906
    new-instance v1, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 1948
    new-instance v1, Lcom/android/server/net/NetworkStatsService$9;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$9;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 285
    const-string v1, "missing Context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 286
    const-string v1, "missing INetworkManagementService"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 287
    const-string v1, "missing IAlarmManager"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IAlarmManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    .line 288
    const-string v1, "missing TrustedTime"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    .line 289
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string v2, "missing TelephonyManager"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 290
    const-string v1, "missing NetworkStatsSettings"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 292
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 294
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 296
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 297
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 298
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 300
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netstats.bin"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    .line 301
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netstats_xt.bin"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    .line 302
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netstats_uid.bin"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    .line 303
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkStatsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/net/NetworkStatsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkStatsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/net/NetworkStatsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->qbShutdownLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeDataUsageHelper()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->clearStatsFiles()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidLocked(I)V

    return-void
.end method

.method private bootstrapStats()V
    .locals 5

    .prologue
    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 1032
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 1033
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1034
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1040
    :goto_0
    return-void

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem reading network stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1037
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private clearStatsFiles()V
    .locals 5

    .prologue
    .line 784
    const-string v2, "NetworkStats"

    const-string v3, "clearStatsFiles"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "rm -r /data/system/netstats.bin"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 788
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "rm -r /data/system/netstats_xt.bin"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 789
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "rm -r /data/system/netstats_uid.bin"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService;

    .line 794
    .local v1, pms:Lcom/android/server/PowerManagerService;
    const-string v2, "clearStatsFiles"

    invoke-virtual {v1, v2}, Lcom/android/server/PowerManagerService;->reboot(Ljava/lang/String;)V

    .line 795
    return-void

    .line 790
    .end local v1           #pms:Lcom/android/server/PowerManagerService;
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Ljava/io/IOException;
    const-string v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearStatsFiles e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .parameter "uidSnapshot"

    .prologue
    .line 1920
    invoke-virtual {p0}, Landroid/net/NetworkStats;->groupedByIface()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;
    .locals 9
    .parameter "before"
    .parameter "current"
    .parameter "collectStale"
    .parameter "type"

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0xa

    .line 1863
    if-eqz p1, :cond_2

    .line 1865
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/net/NetworkStats$NonMonotonicException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1895
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 1866
    .restart local p2
    :catch_0
    move-exception v1

    .line 1867
    .local v1, e:Landroid/net/NetworkStats$NonMonotonicException;
    const-string v3, "NetworkStats"

    const-string v4, "found non-monotonic values; saving to dropbox"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1871
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found non-monotonic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values at left["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->leftIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] - right["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->rightIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    const-string v3, "left="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->left:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1874
    const-string v3, "right="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->right:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1876
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    if-eqz v3, :cond_1

    .line 1877
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    const-string v4, "netstats_error"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p2, p1, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;
    :try_end_1
    .catch Landroid/net/NetworkStats$NonMonotonicException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    goto :goto_0

    .line 1884
    :catch_1
    move-exception v2

    .line 1885
    .local v2, e1:Landroid/net/NetworkStats$NonMonotonicException;
    const-string v3, "NetworkStats"

    const-string v4, "found non-monotonic values; returning empty delta"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    new-instance p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-direct {p2, v7, v8, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    goto/16 :goto_0

    .line 1889
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #e:Landroid/net/NetworkStats$NonMonotonicException;
    .end local v2           #e1:Landroid/net/NetworkStats$NonMonotonicException;
    .restart local p2
    :cond_2
    if-nez p3, :cond_0

    .line 1895
    new-instance p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-direct {p2, v7, v8, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    goto/16 :goto_0
.end method

.method private dumpUidSummary(IIILandroid/net/NetworkStatsHistory;)V
    .locals 11
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "history"

    .prologue
    .line 1693
    if-nez p3, :cond_0

    .line 1694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1695
    .local v5, now:J
    const/4 v7, 0x0

    .line 1696
    .local v7, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v8, 0x0

    .line 1697
    .local v8, total:J
    const/4 v10, 0x0

    .line 1699
    .local v10, uidName:Ljava/lang/String;
    const-wide/high16 v1, -0x8000

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1700
    iget-wide v0, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v8, v0, v2

    .line 1701
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    .line 1702
    const-string v0, "NetworkStats"

    const-string v1, "-------------------"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(rx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    .end local v5           #now:J
    .end local v7           #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v8           #total:J
    .end local v10           #uidName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private ensureUidStatsLoadedLocked()V
    .locals 1

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    if-nez v0, :cond_0

    .line 1475
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readUidStatsLocked()V

    .line 1476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 1478
    :cond_0
    return-void
.end method

.method private estimateNetworkBuckets()I
    .locals 4

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkMaxHistory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I
    .locals 4
    .parameter "existing"
    .parameter "newBucketDuration"

    .prologue
    .line 1932
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private estimateUidBuckets()I
    .locals 4

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidMaxHistory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "ident"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;
    .locals 6
    .parameter "ident"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStatsHistory;"
        }
    .end annotation

    .prologue
    .line 1373
    .local p2, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    const-string v4, "NetworkStats"

    const-string v5, "findOrCreateNetworkStatsLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 1375
    .local v2, existing:Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_0

    .line 1376
    const-string v4, "NetworkStats"

    const-string v5, "Create new history"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v0

    .line 1380
    .local v0, bucketDuration:J
    const/4 v3, 0x0

    .line 1381
    .local v3, updated:Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_2

    .line 1382
    new-instance v3, Landroid/net/NetworkStatsHistory;

    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    const/16 v4, 0xa

    invoke-direct {v3, v0, v1, v4}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1389
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 1390
    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v3

    .line 1383
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1

    .line 1384
    new-instance v3, Landroid/net/NetworkStatsHistory;

    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    invoke-static {v2, v0, v1}, Lcom/android/server/net/NetworkStatsService;->estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I

    move-result v4

    invoke-direct {v3, v0, v1, v4}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1386
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 1393
    goto :goto_1
.end method

.method private findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "ident"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 7
    .parameter "ident"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1401
    new-instance v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsService$UidStatsKey;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 1402
    .local v3, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 1405
    .local v2, existing:Landroid/net/NetworkStatsHistory;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v0

    .line 1406
    .local v0, bucketDuration:J
    const/4 v4, 0x0

    .line 1407
    .local v4, updated:Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_1

    .line 1408
    new-instance v4, Landroid/net/NetworkStatsHistory;

    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    const/16 v5, 0xa

    invoke-direct {v4, v0, v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1415
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 1416
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v4

    .line 1409
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_0

    .line 1410
    new-instance v4, Landroid/net/NetworkStatsHistory;

    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    invoke-static {v2, v0, v1}, Lcom/android/server/net/NetworkStatsService;->estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I

    move-result v5

    invoke-direct {v4, v0, v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1412
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v4, v2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 1419
    goto :goto_1
.end method

.method private generateRandomLocked([Ljava/lang/String;)V
    .locals 51
    .parameter "args"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1782
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    .line 1783
    .local v42, totalBytes:J
    const/4 v11, 0x2

    aget-object v11, p1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    .line 1785
    .local v44, totalTime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    .line 1786
    .local v37, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v41

    .line 1787
    .local v41, specialUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v30, 0x3

    .local v30, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    move/from16 v0, v30

    if-ge v0, v11, :cond_0

    .line 1789
    :try_start_0
    aget-object v11, p1, v30

    const/4 v12, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 1790
    :catch_0
    move-exception v27

    .line 1791
    .local v27, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/RuntimeException;

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 1795
    .end local v27           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v36

    .line 1796
    .local v36, otherUidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ApplicationInfo;

    .line 1797
    .local v34, info:Landroid/content/pm/ApplicationInfo;
    const-string v11, "android.permission.INTERNET"

    move-object/from16 v0, v34

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, v34

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1799
    move-object/from16 v0, v34

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1803
    .end local v34           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v36}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1805
    .local v35, otherUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1806
    .local v6, end:J
    sub-long v4, v6, v44

    .line 1808
    .local v4, start:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1809
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1810
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1812
    new-instance v38, Ljava/util/Random;

    invoke-direct/range {v38 .. v38}, Ljava/util/Random;-><init>()V

    .line 1813
    .local v38, r:Ljava/util/Random;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .end local v31           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/net/NetworkIdentitySet;

    .line 1814
    .local v33, ident:Lcom/android/server/net/NetworkIdentitySet;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v26

    .line 1815
    .local v26, devHistory:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v50

    .line 1817
    .local v50, xtHistory:Landroid/net/NetworkStatsHistory;
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    .local v49, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1820
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 1821
    invoke-static/range {v35 .. v35}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1822
    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1825
    :cond_4
    const/16 v28, 0x1

    .line 1826
    .local v28, first:Z
    move-wide/from16 v39, v42

    .line 1827
    .local v39, remainingBytes:J
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .line 1828
    .local v46, uid:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v46

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 1830
    .local v3, defaultHistory:Landroid/net/NetworkStatsHistory;
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v46

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v10

    .line 1833
    .local v10, foregroundHistory:Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-long v11, v11

    div-long v47, v42, v11

    .line 1835
    .local v47, uidBytes:J
    invoke-virtual/range {v38 .. v38}, Ljava/util/Random;->nextFloat()F

    move-result v29

    .line 1836
    .local v29, fractionDefault:F
    move-wide/from16 v0, v47

    long-to-float v11, v0

    mul-float v11, v11, v29

    float-to-long v8, v11

    .line 1837
    .local v8, defaultBytes:J
    move-wide/from16 v0, v47

    long-to-float v11, v0

    const/high16 v12, 0x3f80

    sub-float v12, v12, v29

    mul-float/2addr v11, v12

    float-to-long v15, v11

    .line 1839
    .local v15, foregroundBytes:J
    invoke-virtual/range {v3 .. v9}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJ)V

    move-wide v11, v4

    move-wide v13, v6

    .line 1840
    invoke-virtual/range {v10 .. v16}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJ)V

    .line 1842
    if-eqz v28, :cond_5

    .line 1843
    add-long v11, v4, v6

    const-wide/16 v13, 0x2

    div-long v18, v11, v13

    .line 1844
    .local v18, bumpTime:J
    const-wide/32 v11, 0x5265c00

    add-long v20, v18, v11

    const-wide/32 v22, 0xc800000

    const-wide/16 v24, 0x0

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v25}, Landroid/net/NetworkStatsHistory;->recordData(JJJJ)V

    .line 1846
    const/16 v28, 0x0

    .line 1849
    .end local v18           #bumpTime:J
    :cond_5
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1850
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1851
    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1852
    move-object/from16 v0, v50

    invoke-virtual {v0, v10}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_2

    .line 1855
    .end local v3           #defaultHistory:Landroid/net/NetworkStatsHistory;
    .end local v8           #defaultBytes:J
    .end local v10           #foregroundHistory:Landroid/net/NetworkStatsHistory;
    .end local v15           #foregroundBytes:J
    .end local v26           #devHistory:Landroid/net/NetworkStatsHistory;
    .end local v28           #first:Z
    .end local v29           #fractionDefault:F
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v33           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v39           #remainingBytes:J
    .end local v46           #uid:I
    .end local v47           #uidBytes:J
    .end local v49           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v50           #xtHistory:Landroid/net/NetworkStatsHistory;
    :cond_6
    return-void
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1971
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1973
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDataActivedSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;
    .locals 8
    .parameter "template"
    .parameter "fields"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStatsHistory;"
        }
    .end annotation

    .prologue
    .line 475
    .local p3, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 476
    :try_start_0
    const-string v4, "NetworkStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHistoryForNetwork() susbId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->estimateNetworkBuckets()I

    move-result v4

    invoke-direct {v0, v6, v7, v4, p2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 481
    .local v0, combined:Landroid/net/NetworkStatsHistory;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 482
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v3}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 484
    .local v1, history:Landroid/net/NetworkStatsHistory;
    if-eqz v1, :cond_0

    .line 485
    const-string v4, "NetworkStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHistoryForNetwork matched! ident:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    .line 491
    .end local v0           #combined:Landroid/net/NetworkStatsHistory;
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 490
    .restart local v0       #combined:Landroid/net/NetworkStatsHistory;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getHistoryForNetworkDev(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryForNetworkXt(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J
    .locals 7
    .parameter "template"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 566
    .local p2, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    const-wide v3, 0x7fffffffffffffffL

    .line 567
    .local v3, start:J
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 568
    .local v2, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 569
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 570
    .local v0, history:Landroid/net/NetworkStatsHistory;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 574
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    return-wide v3
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1905
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v1

    .line 1906
    .local v1, tetheredIfacePairs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1915
    .end local v1           #tetheredIfacePairs:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1907
    :catch_0
    move-exception v0

    .line 1914
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "NetworkStats"

    const-string v3, "problem reading network stats"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v3, 0x0

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_0
.end method

.method private getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;
    .locals 14
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 534
    .local p6, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 536
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 538
    .local v6, now:J
    new-instance v12, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/4 v4, 0x1

    invoke-direct {v12, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 539
    .local v12, stats:Landroid/net/NetworkStats;
    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 540
    .local v9, entry:Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .line 543
    .local v8, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    invoke-virtual/range {p6 .. p6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkIdentitySet;

    .line 544
    .local v11, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v11}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .local v1, history:Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 546
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 548
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 549
    const/4 v2, -0x1

    iput v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 550
    const/4 v2, 0x0

    iput v2, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 551
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 552
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 553
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 554
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 556
    invoke-virtual {v12, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 561
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v6           #now:J
    .end local v8           #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v9           #entry:Landroid/net/NetworkStats$Entry;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v12           #stats:Landroid/net/NetworkStats;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 560
    .restart local v6       #now:J
    .restart local v8       #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .restart local v9       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #stats:Landroid/net/NetworkStats;
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v12
.end method

.method private getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 7
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 525
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 7
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 529
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getUserDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "user"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private performNetworkDevPollLocked(Landroid/net/NetworkStats;J)V
    .locals 13
    .parameter "networkDevSnapshot"
    .parameter "currentTime"

    .prologue
    .line 1151
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 1153
    .local v10, unknownIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const-string v11, "dev"

    invoke-direct {p0, v3, p1, v4, v11}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1155
    .local v6, delta:Landroid/net/NetworkStats;
    invoke-virtual {v6}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v1, p2, v3

    .line 1157
    .local v1, timeStart:J
    const-string v3, "NetworkStats"

    const-string v4, "performNetworkDevPollLocked"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v5, 0x0

    .line 1160
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v7, v3, :cond_3

    .line 1161
    invoke-virtual {v6, v7, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1162
    iget-object v9, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1164
    .local v9, ifaceName:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 1160
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1168
    :cond_0
    const-string v3, "ccmni"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duiface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v11, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1172
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkIdentitySet;

    .line 1174
    .local v8, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v8, :cond_2

    .line 1175
    iget-object v3, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1179
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v3, p2

    .line 1180
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 1183
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v9           #ifaceName:Ljava/lang/String;
    :cond_3
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 1185
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1186
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown dev interfaces "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", ignoring those stats"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_4
    return-void
.end method

.method private performNetworkXtPollLocked(Landroid/net/NetworkStats;J)V
    .locals 13
    .parameter "networkXtSnapshot"
    .parameter "currentTime"

    .prologue
    .line 1194
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 1196
    .local v10, unknownIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const-string v11, "xt"

    invoke-direct {p0, v3, p1, v4, v11}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1198
    .local v6, delta:Landroid/net/NetworkStats;
    invoke-virtual {v6}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v1, p2, v3

    .line 1200
    .local v1, timeStart:J
    const/4 v5, 0x0

    .line 1201
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v7, v3, :cond_2

    .line 1202
    invoke-virtual {v6, v7, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1203
    iget-object v9, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1205
    .local v9, ifaceName:Ljava/lang/String;
    const-string v3, "ccmni0"

    iget-object v4, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duiface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v11, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1209
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkIdentitySet;

    .line 1210
    .local v8, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v8, :cond_1

    .line 1211
    iget-object v3, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1201
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1215
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v3, p2

    .line 1216
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 1219
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v9           #ifaceName:Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1221
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1222
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown xt interfaces "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", ignoring those stats"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_3
    return-void
.end method

.method private performPoll(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1047
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1052
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1056
    monitor-exit v1

    .line 1057
    return-void

    .line 1054
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 1056
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private performPollLocked(I)V
    .locals 32
    .parameter "flags"

    .prologue
    .line 1064
    const-string v29, "NetworkStats"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "performPollLocked(flags=0x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 1067
    .local v22, startRealtime:J
    and-int/lit8 v29, p1, 0x1

    if-eqz v29, :cond_3

    const/4 v14, 0x1

    .line 1068
    .local v14, persistNetwork:Z
    :goto_0
    and-int/lit8 v29, p1, 0x2

    if-eqz v29, :cond_4

    const/16 v19, 0x1

    .line 1069
    .local v19, persistUid:Z
    :goto_1
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    if-eqz v29, :cond_5

    const/4 v13, 0x1

    .line 1072
    .local v13, persistForce:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v29

    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v5

    .line 1074
    .local v5, currentTime:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPersistThreshold()J

    move-result-wide v25

    .line 1081
    .local v25, threshold:J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v24

    .line 1084
    .local v24, tetherSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    invoke-interface/range {v29 .. v30}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v27

    .line 1085
    .local v27, uidSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1086
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performUidPollLocked(Landroid/net/NetworkStats;J)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/os/INetworkManagementService;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v10

    .line 1090
    .local v10, networkDevSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performNetworkDevPollLocked(Landroid/net/NetworkStats;J)V

    .line 1093
    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v12

    .line 1094
    .local v12, networkXtSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performNetworkXtPollLocked(Landroid/net/NetworkStats;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    const-string v31, "devp"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v15

    .line 1107
    .local v15, persistNetworkDevDelta:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    const-string v31, "xtp"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v17

    .line 1109
    .local v17, persistNetworkXtDelta:J
    cmp-long v29, v15, v25

    if-gtz v29, :cond_0

    cmp-long v29, v17, v25

    if-lez v29, :cond_7

    :cond_0
    const/4 v11, 0x1

    .line 1111
    .local v11, networkOverThreshold:Z
    :goto_4
    if-nez v13, :cond_1

    if-eqz v14, :cond_8

    if-eqz v11, :cond_8

    .line 1112
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkDevStatsLocked()V

    .line 1113
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkXtStatsLocked()V

    .line 1114
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 1115
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1121
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistUidSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    const-string v31, "uidp"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v20

    .line 1123
    .local v20, persistUidDelta:J
    if-nez v13, :cond_2

    if-eqz v19, :cond_9

    cmp-long v29, v20, v25

    if-lez v29, :cond_9

    .line 1124
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 1125
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mLastPersistUidSnapshot:Landroid/net/NetworkStats;

    .line 1131
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v7, v29, v22

    .line 1132
    .local v7, duration:J
    const-string v29, "NetworkStats"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "performPollLocked() took "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "ms"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v28, Landroid/content/Intent;

    const-string v29, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v28, updatedIntent:Landroid/content/Intent;
    const/high16 v29, 0x4000

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1145
    .end local v7           #duration:J
    .end local v10           #networkDevSnapshot:Landroid/net/NetworkStats;
    .end local v11           #networkOverThreshold:Z
    .end local v12           #networkXtSnapshot:Landroid/net/NetworkStats;
    .end local v15           #persistNetworkDevDelta:J
    .end local v17           #persistNetworkXtDelta:J
    .end local v20           #persistUidDelta:J
    .end local v24           #tetherSnapshot:Landroid/net/NetworkStats;
    .end local v27           #uidSnapshot:Landroid/net/NetworkStats;
    .end local v28           #updatedIntent:Landroid/content/Intent;
    :goto_7
    return-void

    .line 1067
    .end local v5           #currentTime:J
    .end local v13           #persistForce:Z
    .end local v14           #persistNetwork:Z
    .end local v19           #persistUid:Z
    .end local v25           #threshold:J
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1068
    .restart local v14       #persistNetwork:Z
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1069
    .restart local v19       #persistUid:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1072
    .restart local v13       #persistForce:Z
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto/16 :goto_3

    .line 1096
    .restart local v5       #currentTime:J
    .restart local v25       #threshold:J
    :catch_0
    move-exception v9

    .line 1097
    .local v9, e:Ljava/lang/IllegalStateException;
    const-string v29, "NetworkStats"

    const-string v30, "problem reading network stats"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1099
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v9

    .line 1101
    .local v9, e:Landroid/os/RemoteException;
    goto :goto_7

    .line 1109
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v10       #networkDevSnapshot:Landroid/net/NetworkStats;
    .restart local v12       #networkXtSnapshot:Landroid/net/NetworkStats;
    .restart local v15       #persistNetworkDevDelta:J
    .restart local v17       #persistNetworkXtDelta:J
    .restart local v24       #tetherSnapshot:Landroid/net/NetworkStats;
    .restart local v27       #uidSnapshot:Landroid/net/NetworkStats;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1117
    .restart local v11       #networkOverThreshold:Z
    :cond_8
    const-string v29, "NetworkStats"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no write Dev/Xt delat:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " Force:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " Net:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1127
    .restart local v20       #persistUidDelta:J
    :cond_9
    const-string v29, "NetworkStats"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no write Uid delat:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private performSample()V
    .locals 23

    .prologue
    .line 1277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1281
    .local v11, largestBucketSize:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v1}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v1}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v13

    .line 1282
    .local v13, now:J
    :goto_0
    rem-long v19, v13, v11

    sub-long v19, v13, v19

    add-long v5, v19, v11

    .line 1283
    .local v5, end:J
    sub-long v3, v5, v11

    .line 1285
    .local v3, start:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v1}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v1}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v15

    .line 1286
    .local v15, trustedTime:J
    :goto_1
    const-wide v8, 0x7fffffffffffffffL

    .line 1288
    .local v8, devHistoryStart:J
    const/4 v2, 0x0

    .line 1289
    .local v2, template:Landroid/net/NetworkTemplate;
    const/4 v10, 0x0

    .line 1290
    .local v10, devTotal:Landroid/net/NetworkStats$Entry;
    const/16 v18, 0x0

    .line 1291
    .local v18, xtTotal:Landroid/net/NetworkStats$Entry;
    const/16 v17, 0x0

    .line 1294
    .local v17, uidTotal:Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v1, p0

    .line 1295
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v8

    move-object/from16 v1, p0

    .line 1297
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v18

    .line 1298
    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v17

    .line 1309
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v1, p0

    .line 1310
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    .line 1311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v8

    move-object/from16 v1, p0

    .line 1312
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v18

    .line 1313
    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v17

    .line 1321
    return-void

    .line 1281
    .end local v2           #template:Landroid/net/NetworkTemplate;
    .end local v3           #start:J
    .end local v5           #end:J
    .end local v8           #devHistoryStart:J
    .end local v10           #devTotal:Landroid/net/NetworkStats$Entry;
    .end local v13           #now:J
    .end local v15           #trustedTime:J
    .end local v17           #uidTotal:Landroid/net/NetworkStats$Entry;
    .end local v18           #xtTotal:Landroid/net/NetworkStats$Entry;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    goto/16 :goto_0

    .line 1285
    .restart local v3       #start:J
    .restart local v5       #end:J
    .restart local v13       #now:J
    :cond_1
    const-wide/16 v15, -0x1

    goto :goto_1
.end method

.method private performUidPollLocked(Landroid/net/NetworkStats;J)V
    .locals 17
    .parameter "uidSnapshot"
    .parameter "currentTime"

    .prologue
    .line 1230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    const/4 v6, 0x0

    const-string v15, "uid"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1, v6, v15}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v8

    .line 1234
    .local v8, delta:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    const/4 v15, 0x0

    const-string v16, "uidop"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v6, v15, v1}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v13

    .line 1236
    .local v13, operationsDelta:Landroid/net/NetworkStats;
    invoke-virtual {v8}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v5

    sub-long v3, p2, v5

    .line 1238
    .local v3, timeStart:J
    const/4 v7, 0x0

    .line 1239
    .local v7, entry:Landroid/net/NetworkStats$Entry;
    const/4 v14, 0x0

    .line 1240
    .local v14, operationsEntry:Landroid/net/NetworkStats$Entry;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v8}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v9, v5, :cond_5

    .line 1241
    invoke-virtual {v8, v9, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1242
    iget-object v11, v7, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1244
    .local v11, ifaceName:Ljava/lang/String;
    const-string v5, "ccmni0"

    iget-object v6, v7, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duiface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-wide v0, v15

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1248
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkIdentitySet;

    .line 1249
    .local v10, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v10, :cond_3

    .line 1250
    iget-wide v5, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-gtz v5, :cond_1

    iget-wide v5, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-gtz v5, :cond_1

    iget-wide v5, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-gtz v5, :cond_1

    iget-wide v5, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-lez v5, :cond_2

    .line 1252
    :cond_1
    const-string v5, "NetworkStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dropping UID delta from unknown iface: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1258
    :cond_3
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iget v6, v7, Landroid/net/NetworkStats$Entry;->uid:I

    iget v15, v7, Landroid/net/NetworkStats$Entry;->set:I

    iget v0, v7, Landroid/net/NetworkStats$Entry;->tag:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v5, v6, v15, v0}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v12

    .line 1259
    .local v12, j:I
    const/4 v5, -0x1

    if-eq v12, v5, :cond_4

    .line 1260
    invoke-virtual {v13, v12, v14}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 1261
    iget-wide v5, v14, Landroid/net/NetworkStats$Entry;->operations:J

    iput-wide v5, v7, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1264
    :cond_4
    iget v5, v7, Landroid/net/NetworkStats$Entry;->uid:I

    iget v6, v7, Landroid/net/NetworkStats$Entry;->set:I

    iget v15, v7, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6, v15}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    .local v2, history:Landroid/net/NetworkStatsHistory;
    move-wide/from16 v5, p2

    .line 1266
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 1269
    .end local v2           #history:Landroid/net/NetworkStatsHistory;
    .end local v10           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v11           #ifaceName:Ljava/lang/String;
    .end local v12           #j:I
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 1270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    invoke-virtual {v5}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

    .line 1271
    return-void
.end method

.method private qbShutdownLocked()V
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkDevStatsLocked()V

    .line 377
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkXtStatsLocked()V

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    if-eqz v0, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 382
    :cond_1
    return-void
.end method

.method private readFileSendBroadcast(Ljava/lang/String;)V
    .locals 9
    .parameter "filename"

    .prologue
    .line 760
    const-string v5, ""

    .line 763
    .local v5, result:Ljava/lang/String;
    const/4 v3, 0x0

    .line 765
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getUserDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, buffer:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 768
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 775
    .end local v0           #buffer:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_1
    const-string v6, "NetworkStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFileSendBroadcast:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v2, Landroid/content/Intent;

    const-string v6, "mediatek.net.datausg.DATA_INFO_DONE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v2, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 778
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 779
    const-string v6, "extra"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 781
    return-void

    .line 772
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 773
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const-string v6, "NetworkStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFileSendBroadcast err:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 772
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private readNetworkDevStatsLocked()V
    .locals 2

    .prologue
    .line 1424
    const-string v0, "NetworkStats"

    const-string v1, "readNetworkDevStatsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 1426
    return-void
.end method

.method private static readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V
    .locals 12
    .parameter "inputFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1436
    .local p1, output:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1438
    const/4 v4, 0x0

    .line 1440
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1443
    .end local v4           #in:Ljava/io/DataInputStream;
    .local v5, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1444
    .local v6, magic:I
    const v9, 0x414e4554

    if-eq v6, v9, :cond_0

    .line 1445
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected magic: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1464
    .end local v6           #magic:I
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 1469
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1471
    :goto_1
    return-void

    .line 1448
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #magic:I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 1449
    .local v8, version:I
    packed-switch v8, :pswitch_data_0

    .line 1461
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1466
    .end local v6           #magic:I
    .end local v8           #version:I
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 1467
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_2
    :try_start_3
    const-string v9, "NetworkStats"

    const-string v10, "problem reading network stats"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1469
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .line 1452
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #magic:I
    .restart local v8       #version:I
    :pswitch_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 1453
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v7, :cond_1

    .line 1454
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v3, v5}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 1455
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-direct {v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 1456
    .local v1, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1453
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1469
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v4, v5

    .line 1470
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1469
    .end local v2           #i:I
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v6           #magic:I
    .end local v7           #size:I
    .end local v8           #version:I
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1466
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1464
    :catch_3
    move-exception v9

    goto :goto_0

    .line 1449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private readNetworkXtStatsLocked()V
    .locals 2

    .prologue
    .line 1429
    const-string v0, "NetworkStats"

    const-string v1, "readNetworkXtStatsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 1431
    return-void
.end method

.method private readUidStatsLocked()V
    .locals 20

    .prologue
    .line 1481
    const-string v17, "NetworkStats"

    const-string v18, "readUidStatsLocked()"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 1486
    const/4 v7, 0x0

    .line 1488
    .local v7, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1491
    .end local v7           #in:Ljava/io/DataInputStream;
    .local v8, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 1492
    .local v11, magic:I
    const v17, 0x414e4554

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    .line 1493
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected magic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1537
    .end local v11           #magic:I
    :catch_0
    move-exception v17

    move-object v7, v8

    .line 1542
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1544
    :goto_1
    return-void

    .line 1496
    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    .restart local v11       #magic:I
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1497
    .local v16, version:I
    packed-switch v16, :pswitch_data_0

    .line 1534
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1539
    .end local v11           #magic:I
    .end local v16           #version:I
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 1540
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v7       #in:Ljava/io/DataInputStream;
    :goto_2
    :try_start_3
    const-string v17, "NetworkStats"

    const-string v18, "problem reading uid stats"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1542
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v17

    .line 1515
    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    .restart local v11       #magic:I
    .restart local v16       #version:I
    :pswitch_0
    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1516
    .local v6, identSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v6, :cond_3

    .line 1517
    new-instance v5, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v5, v8}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 1519
    .local v5, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1520
    .local v13, size:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_5
    if-ge v9, v13, :cond_2

    .line 1521
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1522
    .local v15, uid:I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1524
    .local v12, set:I
    :goto_6
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1526
    .local v14, tag:I
    new-instance v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    invoke-direct {v10, v5, v15, v12, v14}, Lcom/android/server/net/NetworkStatsService$UidStatsKey;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 1527
    .local v10, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    new-instance v3, Landroid/net/NetworkStatsHistory;

    invoke-direct {v3, v8}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 1528
    .local v3, history:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1520
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1522
    .end local v3           #history:Landroid/net/NetworkStatsHistory;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v12           #set:I
    .end local v14           #tag:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_6

    .line 1516
    .end local v15           #uid:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1542
    .end local v4           #i:I
    .end local v5           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v6           #identSize:I
    .end local v9           #j:I
    .end local v13           #size:I
    :cond_3
    :pswitch_1
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .line 1543
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1542
    .end local v7           #in:Ljava/io/DataInputStream;
    .end local v11           #magic:I
    .end local v16           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1539
    :catch_2
    move-exception v2

    goto :goto_2

    .line 1537
    :catch_3
    move-exception v17

    goto/16 :goto_0

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerGlobalAlert()V
    .locals 6

    .prologue
    .line 449
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPersistThreshold()J

    move-result-wide v0

    .line 450
    .local v0, alertBytes:J
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, v1}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 456
    .end local v0           #alertBytes:J
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v2

    .line 452
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem registering for global alert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private registerPollAlarmLocked()V
    .locals 7

    .prologue
    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 435
    .local v2, currentRealtime:J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v2           #currentRealtime:J
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private registerQbReceiver()V
    .locals 3

    .prologue
    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, qbFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mQbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    return-void
.end method

.method private removeUidLocked(I)V
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    .line 1327
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1330
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1332
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1333
    .local v2, knownKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1336
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1337
    .local v1, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    if-ne v5, p1, :cond_0

    .line 1339
    iget v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-nez v5, :cond_1

    .line 1340
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 1341
    .local v4, uidHistory:Landroid/net/NetworkStatsHistory;
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 1343
    .local v3, removedHistory:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1345
    .end local v3           #removedHistory:Landroid/net/NetworkStatsHistory;
    .end local v4           #uidHistory:Landroid/net/NetworkStatsHistory;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1350
    .end local v1           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_2
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    if-eqz v5, :cond_3

    .line 1351
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v5, p1}, Landroid/net/NetworkStats;->withoutUid(I)Landroid/net/NetworkStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 1352
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-static {v5}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1356
    :cond_3
    invoke-static {p1}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1359
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 1360
    return-void
.end method

.method private shutdownLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    const-string v0, "NetworkStats"

    const-string v1, "shutdownLocked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 406
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkDevStatsLocked()V

    .line 408
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkXtStatsLocked()V

    .line 410
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    if-eqz v0, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 416
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 417
    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 418
    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 419
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .parameter "template"
    .parameter "identSet"

    .prologue
    .line 1940
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 1941
    .local v1, ident:Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1942
    const/4 v2, 0x1

    .line 1945
    .end local v1           #ident:Landroid/net/NetworkIdentity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateIfaces()V
    .locals 3

    .prologue
    .line 929
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 932
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateSimListInfo()V

    .line 933
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 937
    monitor-exit v1

    .line 938
    return-void

    .line 935
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 937
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 13

    .prologue
    .line 964
    const-string v9, "NetworkStats"

    const-string v10, "updateIfacesLocked()"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 976
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 983
    .local v8, states:[Landroid/net/NetworkState;
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 985
    move-object v0, v8

    .local v0, arr$:[Landroid/net/NetworkState;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v7, v0, v2

    .line 986
    .local v7, state:Landroid/net/NetworkState;
    iget-object v9, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 988
    .local v6, netType:I
    iget-object v9, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 990
    iget-object v9, v7, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 992
    .local v4, iface:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 996
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "duiface"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/net/NetworkStatsService;->mSimId1:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 997
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v3, :cond_0

    .line 998
    const-string v9, "NetworkStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new netIdent for slot1, simId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/net/NetworkStatsService;->mSimId1:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1000
    .restart local v3       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "duiface"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/net/NetworkStatsService;->mSimId1:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_0
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsService;->mSimId1:J

    invoke-static {v9, v7, v10, v11}, Landroid/net/NetworkIdentity;->buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;J)Landroid/net/NetworkIdentity;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1004
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "duiface"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/net/NetworkStatsService;->mSimId2:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 1005
    .restart local v3       #ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v3, :cond_1

    .line 1006
    const-string v9, "NetworkStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new netIdent for slot2, simId2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/net/NetworkStatsService;->mSimId1:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1008
    .restart local v3       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "duiface"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/net/NetworkStatsService;->mSimId2:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    :cond_1
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsService;->mSimId2:J

    invoke-static {v9, v7, v10, v11}, Landroid/net/NetworkIdentity;->buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;J)Landroid/net/NetworkIdentity;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 985
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v4           #iface:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 977
    .end local v0           #arr$:[Landroid/net/NetworkState;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #netType:I
    .end local v7           #state:Landroid/net/NetworkState;
    .end local v8           #states:[Landroid/net/NetworkState;
    :catch_0
    move-exception v1

    .line 1023
    :cond_3
    return-void

    .line 1013
    .restart local v0       #arr$:[Landroid/net/NetworkState;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v6       #netType:I
    .restart local v7       #state:Landroid/net/NetworkState;
    .restart local v8       #states:[Landroid/net/NetworkState;
    :cond_4
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 1014
    .restart local v3       #ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v3, :cond_5

    .line 1015
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1016
    .restart local v3       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    :cond_5
    const-string v9, "NetworkStats"

    const-string v10, "new netIdent default"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateSimListInfo()V
    .locals 7

    .prologue
    .line 943
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimIdCount:I

    .line 944
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 946
    .local v2, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 947
    .local v1, info:Landroid/provider/Telephony$SIMInfo;
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v3, :cond_1

    .line 948
    iget-wide v3, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimId1:J

    .line 952
    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimIdCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimIdCount:I

    goto :goto_0

    .line 949
    :cond_1
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 950
    iget-wide v3, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimId2:J

    goto :goto_1

    .line 954
    .end local v1           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    .line 955
    return-void
.end method

.method private writeDataUsageHelper()V
    .locals 25

    .prologue
    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->forceUpdate()V

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 690
    .local v8, now:J
    const/4 v10, 0x0

    .line 691
    .local v10, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v18, 0x0

    .line 692
    .local v18, maxBytes:J
    const-wide/16 v22, 0x0

    .line 693
    .local v22, total:J
    const/16 v20, 0x0

    .line 694
    .local v20, maxKey:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    const/16 v24, 0x0

    .line 696
    .local v24, uidname:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 697
    .local v17, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 698
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "yyyyMMdd_hhmmss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 701
    .local v12, datetime:Ljava/lang/String;
    new-instance v11, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getUserDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duhelper"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 702
    .local v11, dataUsageHelperFile:Lcom/android/internal/os/AtomicFile;
    const/4 v14, 0x0

    .line 705
    .local v14, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v11}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v14

    .line 706
    new-instance v21, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 707
    .local v21, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    move-object/from16 v0, v21

    invoke-interface {v0, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 708
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 710
    const/4 v4, 0x0

    const-string v5, "datausage-helper"

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    const-string v4, "version"

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 712
    const/4 v4, 0x0

    const-string v5, "DateTime"

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 715
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 716
    .local v16, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 717
    .local v3, history:Landroid/net/NetworkStatsHistory;
    const-wide/high16 v4, -0x8000

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 718
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v4, v6

    .line 720
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 722
    cmp-long v4, v22, v18

    if-ltz v4, :cond_0

    .line 723
    move-wide/from16 v18, v22

    .line 724
    move-object/from16 v20, v16

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v24

    .line 726
    if-nez v24, :cond_0

    .line 727
    const-string v24, "unknown"

    goto :goto_1

    .line 730
    .end local v3           #history:Landroid/net/NetworkStatsHistory;
    .end local v16           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_1
    if-eqz v20, :cond_2

    .line 731
    const/4 v4, 0x0

    const-string v5, "App"

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 732
    const-string v4, "SysUid"

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    move-object/from16 v0, v21

    invoke-static {v0, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 733
    const/4 v4, 0x0

    const-string v5, "Name"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    const-string v4, "BgData"

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-static {v0, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 735
    const/4 v4, 0x0

    const-string v5, "App"

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 736
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 737
    const-wide/16 v18, 0x0

    .line 738
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 744
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    const-string v5, "datausage-helper"

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 745
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 746
    invoke-virtual {v11, v14}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duhelper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkStatsService;->readFileSendBroadcast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v21           #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    :goto_2
    return-void

    .line 748
    :catch_0
    move-exception v13

    .line 749
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeDataUsageHelper err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-eqz v14, :cond_3

    .line 751
    invoke-virtual {v11, v14}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 753
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private writeNetworkDevStatsLocked()V
    .locals 2

    .prologue
    .line 1547
    const-string v0, "NetworkStats"

    const-string v1, "writeNetworkDevStatsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V

    .line 1549
    return-void
.end method

.method private writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V
    .locals 23
    .parameter
    .parameter "outputFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;",
            "Lcom/android/internal/os/AtomicFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1561
    .local p1, input:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1563
    .local v16, systemCurrentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v18

    .line 1565
    .local v18, trustedCurrentTime:J
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1566
    .local v6, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkMaxHistory()J

    move-result-wide v13

    .line 1568
    .local v13, maxHistory:J
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkStatsHistory;

    .line 1570
    .local v10, history:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 1592
    .end local v6           #currentTime:J
    .end local v10           #history:Landroid/net/NetworkStatsHistory;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #maxHistory:J
    .end local v16           #systemCurrentTime:J
    .end local v18           #trustedCurrentTime:J
    :cond_1
    const/4 v9, 0x0

    .line 1594
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9

    .line 1595
    new-instance v15, Ljava/io/DataOutputStream;

    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1597
    .local v15, out:Ljava/io/DataOutputStream;
    const v20, 0x414e4554

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1598
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1600
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1601
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkIdentitySet;

    .line 1602
    .local v12, ident:Lcom/android/server/net/NetworkIdentitySet;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkStatsHistory;

    .line 1603
    .restart local v10       #history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v12, v15}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 1604
    invoke-virtual {v10, v15}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1609
    .end local v10           #history:Landroid/net/NetworkStatsHistory;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v15           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v8

    .line 1610
    .local v8, e:Ljava/io/IOException;
    const-string v20, "NetworkStats"

    const-string v21, "problem writing stats"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1611
    if-eqz v9, :cond_2

    .line 1612
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1615
    .end local v8           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 1574
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #currentTime:J
    .restart local v10       #history:Landroid/net/NetworkStatsHistory;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #maxHistory:J
    .restart local v16       #systemCurrentTime:J
    .restart local v18       #trustedCurrentTime:J
    :cond_3
    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    .line 1575
    .local v4, beforeSize:I
    sub-long v20, v6, v13

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    .line 1576
    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    .line 1578
    .local v3, afterSize:I
    const/16 v20, 0x18

    move/from16 v0, v20

    if-le v4, v0, :cond_0

    div-int/lit8 v20, v4, 0x2

    move/from16 v0, v20

    if-ge v3, v0, :cond_0

    .line 1580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1581
    .local v5, builder:Ljava/lang/StringBuilder;
    const-string v20, "yikes, dropping more than half of history"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1582
    const-string v20, "systemCurrentTime="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1583
    const-string v20, "trustedCurrentTime="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1584
    const-string v20, "maxHistory="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1585
    const-string v20, "beforeSize="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1586
    const-string v20, "afterSize="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    move-object/from16 v20, v0

    const-string v21, "netstats_error"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1607
    .end local v3           #afterSize:I
    .end local v4           #beforeSize:I
    .end local v5           #builder:Ljava/lang/StringBuilder;
    .end local v6           #currentTime:J
    .end local v10           #history:Landroid/net/NetworkStatsHistory;
    .end local v13           #maxHistory:J
    .end local v16           #systemCurrentTime:J
    .end local v18           #trustedCurrentTime:J
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/DataOutputStream;
    :cond_4
    :try_start_1
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 1608
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private writeNetworkXtStatsLocked()V
    .locals 2

    .prologue
    .line 1552
    const-string v0, "NetworkStats"

    const-string v1, "writeNetworkXtStatsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V

    .line 1554
    return-void
.end method

.method private writeUidStatsLocked()V
    .locals 24

    .prologue
    .line 1618
    const-string v20, "NetworkStats"

    const-string v21, "writeUidStatsLocked()"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 1621
    const-string v20, "NetworkStats"

    const-string v21, "asked to write UID stats when not loaded; skipping"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_0
    :goto_0
    return-void

    .line 1628
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1631
    .local v4, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidMaxHistory()J

    move-result-wide v17

    .line 1632
    .local v17, maxUidHistory:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTagMaxHistory()J

    move-result-wide v15

    .line 1633
    .local v15, maxTagHistory:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1634
    .local v12, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkStatsHistory;

    .line 1637
    .local v8, history:Landroid/net/NetworkStatsHistory;
    iget v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 1638
    sub-long v20, v4, v17

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    goto :goto_1

    .line 1640
    :cond_2
    sub-long v20, v4, v15

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    goto :goto_1

    .line 1646
    .end local v4           #currentTime:J
    .end local v8           #history:Landroid/net/NetworkStatsHistory;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v15           #maxTagHistory:J
    .end local v17           #maxUidHistory:J
    :cond_3
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v14

    .line 1647
    .local v14, keysByIdent:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1648
    .restart local v12       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1649
    .local v13, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    if-nez v13, :cond_4

    .line 1650
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1651
    iget-object v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    :cond_4
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1656
    .end local v12           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v13           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    :cond_5
    const/4 v7, 0x0

    .line 1658
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    .line 1659
    new-instance v19, Ljava/io/DataOutputStream;

    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1661
    .local v19, out:Ljava/io/DataOutputStream;
    const v20, 0x414e4554

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1662
    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1664
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1665
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkIdentitySet;

    .line 1666
    .local v11, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1667
    .restart local v13       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 1669
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1670
    const-string v20, "NetworkStats"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ">> ident:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1672
    .restart local v12       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkStatsHistory;

    .line 1673
    .restart local v8       #history:Landroid/net/NetworkStatsHistory;
    iget v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1674
    iget v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1675
    iget v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1676
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 1678
    sget-boolean v20, Lcom/android/server/net/NetworkStatsService;->IS_USER_BUILD:Z

    if-nez v20, :cond_7

    iget v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    move/from16 v20, v0

    iget v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    move/from16 v21, v0

    iget v0, v12, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/net/NetworkStatsService;->dumpUidSummary(IIILandroid/net/NetworkStatsHistory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1684
    .end local v8           #history:Landroid/net/NetworkStatsHistory;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v12           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v13           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    .end local v19           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v6

    .line 1685
    .local v6, e:Ljava/io/IOException;
    const-string v20, "NetworkStats"

    const-string v21, "problem writing stats"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1686
    if-eqz v7, :cond_0

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto/16 :goto_0

    .line 1682
    .end local v6           #e:Ljava/io/IOException;
    .restart local v19       #out:Ljava/io/DataOutputStream;
    :cond_8
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->flush()V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "connManager"

    .prologue
    .line 306
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 307
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1710
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    const-string v14, "NetworkStats"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1713
    .local v2, argSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v11, :cond_0

    aget-object v1, v3, v6

    .line 1714
    .local v1, arg:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1713
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1717
    .end local v1           #arg:Ljava/lang/String;
    :cond_0
    const-string v12, "full"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1719
    .local v4, fullHistory:Z
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1721
    :try_start_0
    const-string v12, "generate"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1722
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->generateRandomLocked([Ljava/lang/String;)V

    .line 1723
    const-string v12, "Generated stub stats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    monitor-exit v13

    .line 1775
    .end local v6           #i$:I
    :goto_1
    return-void

    .line 1727
    .restart local v6       #i$:I
    :cond_1
    const-string v12, "poll"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1728
    const/16 v12, 0x103

    invoke-direct {p0, v12}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1729
    const-string v12, "Forced poll"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    monitor-exit v13

    goto :goto_1

    .line 1774
    .end local v6           #i$:I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1733
    .restart local v6       #i$:I
    :cond_2
    :try_start_1
    const-string v12, "Active interfaces:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1735
    .local v8, iface:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1736
    .local v7, ident:Lcom/android/server/net/NetworkIdentitySet;
    const-string v12, "  iface="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1737
    const-string v12, " ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1740
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v8           #iface:Ljava/lang/String;
    :cond_3
    const-string v12, "Known historical dev stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1741
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1742
    .restart local v7       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1743
    .local v5, history:Landroid/net/NetworkStatsHistory;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_3

    .line 1747
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_4
    const-string v12, "Known historical xt stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1749
    .restart local v7       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1750
    .restart local v5       #history:Landroid/net/NetworkStatsHistory;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_4

    .line 1754
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_5
    const-string v12, "detail"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1757
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1759
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 1760
    .local v10, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1761
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1763
    const-string v12, "Detailed UID stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1765
    .local v9, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    const-string v12, " uid="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1767
    const-string v12, " set="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    invoke-static {v12}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1768
    const-string v12, " tag="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    invoke-static {v12}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1771
    .restart local v5       #history:Landroid/net/NetworkStatsHistory;
    const-string v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_5

    .line 1774
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v9           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v10           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    :cond_6
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public forceUpdate()V
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    .line 684
    return-void
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 7
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 625
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    const-string v6, "NetworkStats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 631
    .local v3, networkLayer:Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 634
    .local v0, dataLayer:Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 635
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 636
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 637
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 638
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 643
    return-object v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 3
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetworkDev(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 9
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "fields"

    .prologue
    .line 497
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v7, "NetworkStats"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 500
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 503
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->estimateUidBuckets()I

    move-result v5

    invoke-direct {v0, v7, v8, v5, p5}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 505
    .local v0, combined:Landroid/net/NetworkStatsHistory;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 506
    .local v3, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    const/4 v5, -0x1

    if-eq p3, v5, :cond_1

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    if-ne v5, p3, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 507
    .local v4, setMatches:Z
    :goto_1
    iget-object v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v5}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    if-ne v5, p2, :cond_0

    if-eqz v4, :cond_0

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-ne v5, p4, :cond_0

    .line 509
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 510
    .local v1, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    .line 515
    .end local v0           #combined:Landroid/net/NetworkStatsHistory;
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v4           #setMatches:Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 506
    .restart local v0       #combined:Landroid/net/NetworkStatsHistory;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 514
    .end local v3           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 13
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .parameter "includeTags"

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 583
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 588
    .local v5, now:J
    new-instance v11, Landroid/net/NetworkStats;

    sub-long v1, p4, p2

    const/16 v3, 0x18

    invoke-direct {v11, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 589
    .local v11, stats:Landroid/net/NetworkStats;
    new-instance v8, Landroid/net/NetworkStats$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 590
    .local v8, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .line 592
    .local v7, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 593
    .local v10, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v1}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-eqz v1, :cond_1

    if-eqz p6, :cond_0

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v1, p2

    move-wide/from16 v3, p4

    .line 598
    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 600
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 601
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->uid:I

    .line 602
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->set:I

    .line 603
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->tag:I

    .line 604
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 605
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 606
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 607
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 608
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->operations:J

    .line 610
    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 612
    :cond_2
    invoke-virtual {v11, v8}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 619
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v5           #now:J
    .end local v7           #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v8           #entry:Landroid/net/NetworkStats$Entry;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v11           #stats:Landroid/net/NetworkStats;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 618
    .restart local v5       #now:J
    .restart local v7       #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .restart local v8       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #stats:Landroid/net/NetworkStats;
    :cond_3
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v11
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 3
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public incrementOperationCount(III)V
    .locals 17
    .parameter "uid"
    .parameter "tag"
    .parameter "operationCount"

    .prologue
    .line 648
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v0, p1

    if-eq v1, v0, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_0
    if-gez p3, :cond_1

    .line 653
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "operation count can only be incremented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :cond_1
    if-nez p2, :cond_2

    .line 656
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "operation count must have specific tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 660
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 661
    .local v4, set:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, p3

    int-to-long v14, v0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, p3

    int-to-long v14, v0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 663
    monitor-exit v16

    .line 664
    return-void

    .line 663
    .end local v4           #set:I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUidForeground(IZ)V
    .locals 5
    .parameter "uid"
    .parameter "uidForeground"

    .prologue
    const/4 v1, 0x0

    .line 668
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 671
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 672
    .local v1, set:I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 673
    .local v0, oldSet:I
    if-eq v0, v1, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 677
    :cond_1
    monitor-exit v3

    .line 678
    return-void

    .line 677
    .end local v0           #oldSet:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemReady()V
    .locals 10

    .prologue
    .line 310
    const-string v6, "NetworkStats"

    const-string v7, "systemReady"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkDevStatsLocked()V

    .line 316
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkXtStatsLocked()V

    .line 317
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 318
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStats()V

    .line 324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v0, appusgFilter:Landroid/content/IntentFilter;
    const-string v6, "mediatek.net.datausg.DATA_INFO_WRITE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v6, "mediatek.net.datausg.DATA_INFO_DEL"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mDUHelper:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, connFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 334
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 335
    .local v5, tetherFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 338
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, pollFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 342
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.UID_REMOVED"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, removedFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 346
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 347
    .local v4, shutdownFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerQbReceiver()V

    .line 353
    :try_start_1
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 362
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 363
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 365
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v7, "dropbox"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DropBoxManager;

    iput-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    .line 366
    return-void

    .line 318
    .end local v0           #appusgFilter:Landroid/content/IntentFilter;
    .end local v1           #connFilter:Landroid/content/IntentFilter;
    .end local v2           #pollFilter:Landroid/content/IntentFilter;
    .end local v3           #removedFilter:Landroid/content/IntentFilter;
    .end local v4           #shutdownFilter:Landroid/content/IntentFilter;
    .end local v5           #tetherFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 354
    .restart local v0       #appusgFilter:Landroid/content/IntentFilter;
    .restart local v1       #connFilter:Landroid/content/IntentFilter;
    .restart local v2       #pollFilter:Landroid/content/IntentFilter;
    .restart local v3       #removedFilter:Landroid/content/IntentFilter;
    .restart local v4       #shutdownFilter:Landroid/content/IntentFilter;
    .restart local v5       #tetherFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
