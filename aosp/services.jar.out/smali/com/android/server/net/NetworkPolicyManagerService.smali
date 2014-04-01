.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;
    }
.end annotation


# static fields
.field public static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.action.ACTION_ALLOW_BACKGROUND"

.field public static final ACTION_POLICYMGR_CREATED:Ljava/lang/String; = "com.mediatek.server.action.ACTION_POLICY_CREATED"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_GEMINI_SIMID:Ljava/lang/String; = "simId"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final MSG_FOREGROUND_ACTIVITIES_CHANGED:I = 0x3

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_PROCESS_DIED:I = 0x4

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private mActiveNotifs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDataActivedSimId:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsPolicyModified:Z

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNetworkPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private mOverLimitNotified:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Lcom/android/internal/os/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private volatile mRestrictBackground:Z

.field private final mRulesLock:Ljava/lang/Object;

.field private volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId1:J

.field private mSimId2:J

.field private mSimIdCount:I

.field private mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidForeground:Landroid/util/SparseBooleanArray;

.field private mUidPidForeground:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mUidPolicy:Landroid/util/SparseIntArray;

.field private mUidRules:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .parameter "context"
    .parameter "activityManager"
    .parameter "powerManager"
    .parameter "networkStats"
    .parameter "networkManagement"

    .prologue
    .line 271
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 3
    .parameter "context"
    .parameter "activityManager"
    .parameter "powerManager"
    .parameter "networkStats"
    .parameter "networkManagement"
    .parameter "time"
    .parameter "systemDir"
    .parameter "suppressDefaultPolicy"

    .prologue
    .line 282
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    .line 229
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    .line 232
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 234
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 237
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 239
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    .line 242
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    .line 245
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 246
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    .line 249
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 356
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 369
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 410
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 430
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 720
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1578
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 283
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 284
    const-string v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 285
    const-string v0, "missing powerManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 286
    const-string v0, "missing networkStats"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 287
    const-string v0, "missing networkManagement"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 288
    const-string v0, "missing TrustedTime"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TrustedTime;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 290
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 291
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 292
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 294
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 296
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "netpolicy.xml"

    invoke-direct {v1, p7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSimListInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.action.ACTION_ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .parameter "template"

    .prologue
    .line 1821
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1822
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1824
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1825
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1826
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .parameter "policy"
    .parameter "type"

    .prologue
    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .parameter "template"

    .prologue
    .line 1830
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1831
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1837
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1838
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1839
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, v2}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v0           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 1855
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1856
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1857
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1856
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1859
    :cond_0
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 1848
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1849
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1850
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1852
    :cond_0
    return-void
.end method

.method private computeUidForegroundLocked(I)V
    .locals 7
    .parameter "uid"

    .prologue
    .line 1469
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 1472
    .local v2, pidForeground:Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    .line 1473
    .local v4, uidForeground:Z
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 1474
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1475
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1476
    const/4 v4, 0x1

    .line 1481
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 1482
    .local v1, oldUidForeground:Z
    if-eq v1, v4, :cond_1

    .line 1484
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1485
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1487
    :cond_1
    return-void

    .line 1474
    .end local v1           #oldUidForeground:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static dumpSparseBooleanArray(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .parameter "fout"
    .parameter "value"

    .prologue
    .line 1862
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1864
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1866
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1864
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1868
    :cond_1
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1869
    return-void
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 14
    .parameter "policy"
    .parameter "type"
    .parameter "totalBytes"

    .prologue
    .line 570
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, tag:Ljava/lang/String;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 572
    .local v7, builder:Landroid/app/Notification$Builder;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 573
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 575
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 576
    .local v11, res:Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 661
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 663
    .local v5, idReceived:[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v3, 0x0

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 665
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v1           #packageName:Ljava/lang/String;
    .end local v5           #idReceived:[I
    :goto_1
    return-void

    .line 578
    :pswitch_0
    const v0, #string@data_usage_warning_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 579
    .local v12, title:Ljava/lang/CharSequence;
    const v0, #string@data_usage_warning_body#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, body:Ljava/lang/CharSequence;
    const v0, #drawable@stat_notify_error#t

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 582
    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 583
    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 584
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 586
    iget-object v0, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v8

    .line 587
    .local v8, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v0, v3, v8, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 592
    .end local v6           #body:Ljava/lang/CharSequence;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_1
    const v0, #string@data_usage_limit_body#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 595
    .restart local v6       #body:Ljava/lang/CharSequence;
    iget-object v0, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 609
    const/4 v12, 0x0

    .line 613
    .restart local v12       #title:Ljava/lang/CharSequence;
    :goto_2
    const v0, #drawable@stat_notify_disabled#t

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 614
    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 615
    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 616
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 618
    iget-object v0, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v8

    .line 619
    .restart local v8       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v0, v3, v8, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 597
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_2
    const v0, #string@data_usage_3g_limit_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 598
    .restart local v12       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 600
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_3
    const v0, #string@data_usage_4g_limit_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 601
    .restart local v12       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 603
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_4
    const v0, #string@data_usage_mobile_limit_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 604
    .restart local v12       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 606
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_5
    const v0, #string@data_usage_wifi_limit_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 607
    .restart local v12       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 624
    .end local v6           #body:Ljava/lang/CharSequence;
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_6
    iget-wide v3, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v9, p3, v3

    .line 625
    .local v9, overBytes:J
    const v0, #string@data_usage_limit_snoozed_body#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-virtual {v11, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 629
    .restart local v6       #body:Ljava/lang/CharSequence;
    iget-object v0, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 643
    const/4 v12, 0x0

    .line 647
    .restart local v12       #title:Ljava/lang/CharSequence;
    :goto_3
    const v0, #drawable@stat_notify_error#t

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 648
    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 649
    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 650
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 652
    iget-object v0, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v8

    .line 653
    .restart local v8       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v0, v3, v8, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 631
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_7
    const v0, #string@data_usage_3g_limit_snoozed_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 632
    .restart local v12       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 634
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_8
    const v0, #string@data_usage_4g_limit_snoozed_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 635
    .restart local v12       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 637
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_9
    const v0, #string@data_usage_mobile_limit_snoozed_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 638
    .restart local v12       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 640
    .end local v12           #title:Ljava/lang/CharSequence;
    :pswitch_a
    const v0, #string@data_usage_wifi_limit_snoozed_title#t

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 641
    .restart local v12       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 666
    .end local v6           #body:Ljava/lang/CharSequence;
    .end local v9           #overBytes:J
    .end local v12           #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 595
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 629
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 11
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 676
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 677
    .local v9, res:Landroid/content/res/Resources;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 679
    .local v7, builder:Landroid/app/Notification$Builder;
    const v0, #string@data_usage_restricted_title#t

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 680
    .local v10, title:Ljava/lang/CharSequence;
    const v0, #string@data_usage_restricted_body#t

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, body:Ljava/lang/CharSequence;
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 683
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 684
    const v0, #drawable@stat_notify_error#t

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 685
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 686
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 687
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 689
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v8

    .line 690
    .local v8, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v0, v3, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 697
    .local v5, idReceived:[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v3, 0x0

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 699
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v1           #packageName:Ljava/lang/String;
    .end local v5           #idReceived:[I
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 15

    .prologue
    .line 970
    const-string v5, "NetworkPolicy"

    const-string v6, "ensureActiveMobilePolicyLocked()"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v5, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v13

    .line 974
    .local v13, subscriberId:Ljava/lang/String;
    new-instance v12, Landroid/net/NetworkIdentity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v12, v5, v6, v13, v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Z)V

    .line 976
    .local v12, probeIdent:Landroid/net/NetworkIdentity;
    const/4 v11, 0x1

    .line 978
    .local v11, policyChange:Z
    iget-wide v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 982
    const-string v5, "NetworkPolicy"

    const-string v6, "no change policy active"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v11, 0x0

    .line 987
    :cond_2
    const/4 v10, 0x0

    .line 988
    .local v10, mobileDefined:Z
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 989
    .local v0, policy:Landroid/net/NetworkPolicy;
    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v12}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 990
    const/4 v10, 0x1

    .line 991
    if-eqz v11, :cond_3

    .line 992
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/net/NetworkPolicy;->active:Z

    .line 999
    :cond_3
    :goto_2
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Act Policy("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v0, Landroid/net/NetworkPolicy;->active:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 995
    :cond_4
    if-eqz v11, :cond_3

    .line 996
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/net/NetworkPolicy;->active:Z

    goto :goto_2

    .line 1002
    .end local v0           #policy:Landroid/net/NetworkPolicy;
    :cond_5
    if-nez v10, :cond_0

    .line 1003
    const-string v5, "NetworkPolicy"

    const-string v6, "no policy for active mobile network; generating default policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #integer@config_networkPolicyDefaultWarning#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0x100000

    mul-long v3, v5, v7

    .line 1010
    .local v3, warningBytes:J
    new-instance v14, Landroid/text/format/Time;

    const-string v5, "UTC"

    invoke-direct {v14, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v14, time:Landroid/text/format/Time;
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 1012
    iget v2, v14, Landroid/text/format/Time;->monthDay:I

    .line 1016
    .local v2, cycleDay:I
    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 1017
    const-string v5, "NetworkPolicy"

    const-string v6, "invalid simId, don\'t build Template"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1020
    :cond_6
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildTemplateMobileAllGemini for sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-wide v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    invoke-static {v13, v5, v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAllGemini(Ljava/lang/String;J)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1025
    .local v1, template:Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/net/NetworkPolicy;

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    .line 1027
    .restart local v0       #policy:Landroid/net/NetworkPolicy;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/net/NetworkPolicy;->active:Z

    .line 1028
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1030
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendBroadcast()V

    goto/16 :goto_0
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .parameter "ident"

    .prologue
    .line 1330
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 1331
    .local v1, policy:Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1335
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1751
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDataActivedSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .parameter "state"

    .prologue
    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v3, v0, v1, v2}, Landroid/net/NetworkIdentity;->buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;J)Landroid/net/NetworkIdentity;

    move-result-object v18

    .line 1356
    .local v18, ident:Landroid/net/NetworkIdentity;
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNetworkQuotaInfo for sim:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1363
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v19

    .line 1364
    .local v19, policy:Landroid/net/NetworkPolicy;
    monitor-exit v4

    .line 1366
    if-nez v19, :cond_0

    .line 1368
    const/4 v9, 0x0

    .line 1384
    :goto_0
    return-object v9

    .line 1364
    .end local v19           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1371
    .restart local v19       #policy:Landroid/net/NetworkPolicy;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .line 1374
    .local v16, currentTime:J
    move-wide/from16 v0, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    .line 1375
    .local v5, start:J
    move-wide/from16 v7, v16

    .line 1376
    .local v7, end:J
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 1379
    .local v10, totalBytes:J
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v3, v3, v20

    if-eqz v3, :cond_1

    move-object/from16 v0, v19

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 1381
    .local v12, softLimitBytes:J
    :goto_1
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v3, v3, v20

    if-eqz v3, :cond_2

    move-object/from16 v0, v19

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1384
    .local v14, hardLimitBytes:J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .line 1379
    .end local v12           #softLimitBytes:J
    .end local v14           #hardLimitBytes:J
    :cond_1
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 1381
    .restart local v12       #softLimitBytes:J
    :cond_2
    const-wide/16 v14, -0x1

    goto :goto_2
.end method

.method private getSubscriberIdbySimId(J)Ljava/lang/String;
    .locals 4
    .parameter "simId"

    .prologue
    .line 1736
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    .line 1738
    .local v0, slotId:I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1740
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 1741
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 1743
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 7
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1795
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1798
    :goto_0
    return-wide v0

    .line 1796
    :catch_0
    move-exception v6

    .line 1798
    .local v6, e:Landroid/os/RemoteException;
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 2
    .parameter "template"

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 539
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 535
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSimId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubscriberIdbySimId(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private maybeRefreshTrustedTime()V
    .locals 0

    .prologue
    .line 1810
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 2
    .parameter "template"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .parameter "template"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method private readPolicyLocked()V
    .locals 26

    .prologue
    .line 1043
    const-string v3, "NetworkPolicy"

    const-string v24, "readPolicyLocked()"

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 1049
    const/4 v13, 0x0

    .line 1051
    .local v13, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v13

    .line 1052
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 1053
    .local v14, in:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1056
    const/16 v23, 0x1

    .line 1057
    .local v23, version:I
    :cond_0
    :goto_0
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_1

    .line 1058
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1059
    .local v20, tag:Ljava/lang/String;
    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_0

    .line 1060
    const-string v3, "policy-list"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1061
    const-string v3, "version"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1062
    const/4 v3, 0x3

    move/from16 v0, v23

    if-lt v0, v3, :cond_2

    .line 1063
    const-string v3, "restrictBackground"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1107
    .end local v14           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v20           #tag:Ljava/lang/String;
    .end local v21           #type:I
    .end local v23           #version:I
    :catch_0
    move-exception v12

    .line 1109
    .local v12, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1117
    return-void

    .line 1066
    .restart local v14       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20       #tag:Ljava/lang/String;
    .restart local v21       #type:I
    .restart local v23       #version:I
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1110
    .end local v14           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v20           #tag:Ljava/lang/String;
    .end local v21           #type:I
    .end local v23           #version:I
    :catch_1
    move-exception v12

    .line 1111
    .local v12, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "NetworkPolicy"

    const-string v24, "problem reading network policy"

    move-object/from16 v0, v24

    invoke-static {v3, v0, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1115
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 1069
    .restart local v14       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20       #tag:Ljava/lang/String;
    .restart local v21       #type:I
    .restart local v23       #version:I
    :cond_3
    :try_start_4
    const-string v3, "network-policy"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1070
    const-string v3, "networkTemplate"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    .line 1071
    .local v15, networkTemplate:I
    const/4 v3, 0x0

    const-string v24, "subscriberId"

    move-object/from16 v0, v24

    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1072
    .local v19, subscriberId:Ljava/lang/String;
    const-string v3, "cycleDay"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 1073
    .local v5, cycleDay:I
    const-string v3, "warningBytes"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    .line 1074
    .local v6, warningBytes:J
    const-string v3, "limitBytes"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1076
    .local v8, limitBytes:J
    const/4 v3, 0x2

    move/from16 v0, v23

    if-lt v0, v3, :cond_4

    .line 1077
    const-string v3, "lastSnooze"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 1085
    .local v10, lastSnooze:J
    :goto_2
    const-string v3, "simId"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttributeNoErr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v17

    .line 1086
    .local v17, simId:J
    new-instance v4, Landroid/net/NetworkTemplate;

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-direct {v4, v15, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;J)V

    .line 1091
    .local v4, template:Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v3, Landroid/net/NetworkPolicy;

    invoke-direct/range {v3 .. v11}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1112
    .end local v4           #template:Landroid/net/NetworkTemplate;
    .end local v5           #cycleDay:I
    .end local v6           #warningBytes:J
    .end local v8           #limitBytes:J
    .end local v10           #lastSnooze:J
    .end local v14           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v15           #networkTemplate:I
    .end local v17           #simId:J
    .end local v19           #subscriberId:Ljava/lang/String;
    .end local v20           #tag:Ljava/lang/String;
    .end local v21           #type:I
    .end local v23           #version:I
    :catch_2
    move-exception v12

    .line 1113
    .local v12, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v3, "NetworkPolicy"

    const-string v24, "problem reading network policy"

    move-object/from16 v0, v24

    invoke-static {v3, v0, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1079
    .end local v12           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #cycleDay:I
    .restart local v6       #warningBytes:J
    .restart local v8       #limitBytes:J
    .restart local v14       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #networkTemplate:I
    .restart local v19       #subscriberId:Ljava/lang/String;
    .restart local v20       #tag:Ljava/lang/String;
    .restart local v21       #type:I
    .restart local v23       #version:I
    :cond_4
    const-wide/16 v10, -0x1

    .restart local v10       #lastSnooze:J
    goto :goto_2

    .line 1094
    .end local v5           #cycleDay:I
    .end local v6           #warningBytes:J
    .end local v8           #limitBytes:J
    .end local v10           #lastSnooze:J
    .end local v15           #networkTemplate:I
    .end local v19           #subscriberId:Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v3, "uid-policy"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1095
    const-string v3, "uid"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v22

    .line 1096
    .local v22, uid:I
    const-string v3, "policy"

    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    .line 1098
    .local v16, policy:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1099
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto/16 :goto_0

    .line 1101
    :cond_6
    const-string v3, "NetworkPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "unable to apply policy to UID "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; ignoring"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .parameter "iface"

    .prologue
    .line 1689
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1695
    :goto_0
    return-void

    .line 1690
    :catch_0
    move-exception v0

    .line 1691
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1692
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 1035
    const-string v1, "NetworkPolicy"

    const-string v2, "sendBroadcast ACTION_POLICYMGR_CREATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1038
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1040
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .parameter "iface"
    .parameter "quotaBytes"

    .prologue
    .line 1677
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInterfaceQuota iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Bytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1685
    :goto_0
    return-void

    .line 1680
    :catch_0
    move-exception v0

    .line 1681
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1682
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 3
    .parameter "template"
    .parameter "enabled"

    .prologue
    .line 793
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSimId()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnableGemini(IZJ)V

    .line 818
    :goto_0
    return-void

    .line 810
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 813
    :pswitch_2
    const/16 v0, 0x9

    invoke-direct {p0, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPolicyDataEnable(IZ)V
    .locals 1
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1712
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setPolicyDataEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    :goto_0
    return-void

    .line 1713
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setPolicyDataEnableGemini(IZJ)V
    .locals 3
    .parameter "networkType"
    .parameter "enabled"
    .parameter "simId"

    .prologue
    .line 1720
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyDataEnableGemini="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    if-eqz p2, :cond_0

    .line 1724
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p3, p4}, Landroid/net/IConnectivityManager;->setMobileDataEnabledGemini(J)Z

    .line 1732
    :goto_0
    return-void

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->setMobileDataEnabledGemini(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1729
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUidNetworkRules(IZ)V
    .locals 3
    .parameter "uid"
    .parameter "rejectOnQuotaInterfaces"

    .prologue
    .line 1699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1705
    :goto_0
    return-void

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1702
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setUidPolicyUnchecked(IIZ)V
    .locals 3
    .parameter "uid"
    .parameter "policy"
    .parameter "persist"

    .prologue
    .line 1210
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v0

    .line 1212
    .local v0, oldPolicy:I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1215
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1216
    if-eqz p3, :cond_0

    .line 1217
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1219
    :cond_0
    monitor-exit v2

    .line 1220
    return-void

    .line 1219
    .end local v0           #oldPolicy:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateNetworkEnabledLocked(Z)V
    .locals 20
    .parameter "isIgnore"

    .prologue
    .line 742
    const-string v2, "NetworkPolicy"

    const-string v3, ">> updateNetworkEnabledLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 748
    .local v8, currentTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 750
    .local v15, policy:Landroid/net/NetworkPolicy;
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " checking policy:"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSimId()J

    move-result-wide v13

    .line 753
    .local v13, poliSimId:J
    iget-boolean v2, v15, Landroid/net/NetworkPolicy;->active:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v13

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimId1:J

    cmp-long v2, v13, v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimId2:J

    cmp-long v2, v13, v2

    if-eqz v2, :cond_1

    .line 754
    :cond_0
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore this policy"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_1
    iget-wide v2, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v18, -0x1

    cmp-long v2, v2, v18

    if-nez v2, :cond_3

    .line 762
    if-eqz p1, :cond_2

    .line 763
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 765
    :cond_2
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_0

    .line 769
    :cond_3
    invoke-static {v8, v9, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 770
    .local v4, start:J
    move-wide v6, v8

    .line 771
    .local v6, end:J
    iget-object v3, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v16

    .line 773
    .local v16, totalBytes:J
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " totalBytes:"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual/range {v15 .. v17}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v15, Landroid/net/NetworkPolicy;->lastSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    const/4 v12, 0x1

    .line 776
    .local v12, overLimit:Z
    :goto_1
    if-nez v12, :cond_5

    const/4 v10, 0x1

    .line 778
    .local v10, enabled:Z
    :goto_2
    if-eqz p1, :cond_6

    if-eqz v10, :cond_6

    .line 781
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 775
    .end local v10           #enabled:Z
    .end local v12           #overLimit:Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 776
    .restart local v12       #overLimit:Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 783
    .restart local v10       #enabled:Z
    :cond_6
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto/16 :goto_0

    .line 786
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v10           #enabled:Z
    .end local v12           #overLimit:Z
    .end local v13           #poliSimId:J
    .end local v15           #policy:Landroid/net/NetworkPolicy;
    .end local v16           #totalBytes:J
    :cond_7
    return-void
.end method

.method private updateNetworkRulesLocked()V
    .locals 35

    .prologue
    .line 826
    const-string v4, "NetworkPolicy"

    const-string v5, ">> updateNetworkRulesLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    .line 838
    .local v30, states:[Landroid/net/NetworkState;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v24

    .line 839
    .local v24, networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    move-object/from16 v10, v30

    .local v10, arr$:[Landroid/net/NetworkState;
    array-length v0, v10

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v29, v10, v16

    .line 841
    .local v29, state:Landroid/net/NetworkState;
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    .line 845
    .local v19, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    move-wide/from16 v33, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v33

    invoke-static {v4, v0, v1, v2}, Landroid/net/NetworkIdentity;->buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;J)Landroid/net/NetworkIdentity;

    move-result-object v18

    .line 846
    .local v18, ident:Landroid/net/NetworkIdentity;
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "build net ident for sim:"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .end local v18           #ident:Landroid/net/NetworkIdentity;
    .end local v19           #iface:Ljava/lang/String;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 831
    .end local v10           #arr$:[Landroid/net/NetworkState;
    .end local v16           #i$:I
    .end local v22           #len$:I
    .end local v24           #networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .end local v29           #state:Landroid/net/NetworkState;
    .end local v30           #states:[Landroid/net/NetworkState;
    :catch_0
    move-exception v13

    .line 938
    :goto_1
    return-void

    .line 856
    .restart local v10       #arr$:[Landroid/net/NetworkState;
    .restart local v16       #i$:I
    .restart local v22       #len$:I
    .restart local v24       #networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .restart local v30       #states:[Landroid/net/NetworkState;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 857
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 858
    .local v20, ifaceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v16           #i$:I
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkPolicy;

    .line 861
    .local v26, policy:Landroid/net/NetworkPolicy;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 862
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 863
    .local v14, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/NetworkIdentity;

    .line 864
    .restart local v18       #ident:Landroid/net/NetworkIdentity;
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 865
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "add iface for policy:"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 867
    .restart local v19       #iface:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 871
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .end local v18           #ident:Landroid/net/NetworkIdentity;
    .end local v19           #iface:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 872
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    .line 873
    .local v21, ifaces:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 877
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v21           #ifaces:[Ljava/lang/String;
    .end local v26           #policy:Landroid/net/NetworkPolicy;
    :cond_5
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v25

    .line 881
    .local v25, newMeteredIfaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v11

    .line 882
    .local v11, currentTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v10           #arr$:[Landroid/net/NetworkState;
    :cond_6
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkPolicy;

    .line 883
    .restart local v26       #policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    .line 885
    .restart local v21       #ifaces:[Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-static {v11, v12, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 886
    .local v6, start:J
    move-wide v8, v11

    .line 887
    .local v8, end:J
    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v31

    .line 889
    .local v31, totalBytes:J
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "RulesLocked totalBytes:"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v31

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    move-object/from16 v0, v26

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->active:Z

    if-nez v4, :cond_7

    .line 891
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Rules skip policy:"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 896
    :cond_7
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "applying policy "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, " to ifaces "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, v26

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v33, -0x1

    cmp-long v4, v4, v33

    if-eqz v4, :cond_9

    const/4 v15, 0x1

    .line 901
    .local v15, hasLimit:Z
    :goto_5
    if-eqz v15, :cond_6

    .line 903
    move-object/from16 v0, v26

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_a

    .line 906
    const-wide v27, 0x7fffffffffffffffL

    .line 914
    .local v27, quotaBytes:J
    :goto_6
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 916
    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_8
    move-object/from16 v10, v21

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    const/16 v17, 0x0

    .local v17, i$:I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-object v19, v10, v17

    .line 920
    .restart local v19       #iface:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 922
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 919
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 900
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v15           #hasLimit:Z
    .end local v17           #i$:I
    .end local v19           #iface:Ljava/lang/String;
    .end local v27           #quotaBytes:J
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 911
    .restart local v15       #hasLimit:Z
    :cond_a
    const-wide/16 v4, 0x1

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v33, v0

    sub-long v33, v33, v31

    move-wide/from16 v0, v33

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v27

    .restart local v27       #quotaBytes:J
    goto :goto_6

    .line 928
    .end local v6           #start:J
    .end local v8           #end:J
    .end local v15           #hasLimit:Z
    .end local v21           #ifaces:[Ljava/lang/String;
    .end local v26           #policy:Landroid/net/NetworkPolicy;
    .end local v27           #quotaBytes:J
    .end local v31           #totalBytes:J
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_c
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 929
    .restart local v19       #iface:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 930
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "updateNetworkRulesLocked removeqta:"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    goto :goto_8

    .line 934
    .end local v19           #iface:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    .line 937
    .local v23, meteredIfaces:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method

.method private updateNotificationsLocked()V
    .locals 17

    .prologue
    .line 460
    const-string v1, "NetworkPolicy"

    const-string v2, ">> updateNotificationsLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 464
    .local v7, beforeNotifs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 471
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 472
    .local v8, currentTime:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 473
    .local v11, policy:Landroid/net/NetworkPolicy;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " checking policy:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v1, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v11, Landroid/net/NetworkPolicy;->active:Z

    if-nez v1, :cond_2

    .line 477
    :cond_1
    const-string v1, "NetworkPolicy"

    const-string v2, " ignore this policy"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_2
    invoke-static {v8, v9, v11}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v3

    .line 485
    .local v3, start:J
    move-wide v5, v8

    .line 486
    .local v5, end:J
    iget-object v2, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v13

    .line 488
    .local v13, totalBytes:J
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NotificationsLocked totalBytes:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v11, v13, v14}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    iget-wide v1, v11, Landroid/net/NetworkPolicy;->lastSnooze:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 492
    const-string v1, "NetworkPolicy"

    const-string v2, " isOverLimit TYPE_LIMIT_SNOOZED"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1, v13, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_0

    .line 495
    :cond_3
    const-string v1, "NetworkPolicy"

    const-string v2, " isOverLimit TYPE_LIMIT"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1, v13, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 497
    iget-object v1, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto/16 :goto_0

    .line 501
    :cond_4
    const-string v1, "NetworkPolicy"

    const-string v2, " notifyUnderLimitLocked"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 504
    iget-wide v1, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v15, -0x1

    cmp-long v1, v1, v15

    if-eqz v1, :cond_0

    iget-wide v1, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v13, v1

    if-ltz v1, :cond_0

    .line 505
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1, v13, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_0

    .line 511
    .end local v3           #start:J
    .end local v5           #end:J
    .end local v11           #policy:Landroid/net/NetworkPolicy;
    .end local v13           #totalBytes:J
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_6

    .line 512
    const-string v1, "NetworkPolicy:allowBackground"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 516
    :cond_6
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 517
    .local v12, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v1, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 518
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 521
    .end local v12           #tag:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .locals 6

    .prologue
    .line 1519
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1520
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1521
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1522
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 1527
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/16 v4, 0x3e8

    .local v4, uid:I
    :goto_1
    const/16 v5, 0x401

    if-gt v4, v5, :cond_1

    .line 1528
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1527
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1530
    :cond_1
    const/16 v4, 0x7d0

    :goto_2
    const/16 v5, 0x7d2

    if-gt v4, v5, :cond_2

    .line 1531
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1530
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1533
    :cond_2
    const/16 v4, 0xbb8

    :goto_3
    const/16 v5, 0xbbf

    if-gt v4, v5, :cond_3

    .line 1534
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1533
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1536
    :cond_3
    const/16 v4, 0x270e

    :goto_4
    const/16 v5, 0x270f

    if-gt v4, v5, :cond_4

    .line 1537
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1536
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1539
    :cond_4
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 4

    .prologue
    .line 1505
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1506
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1507
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1508
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1509
    .local v2, uid:I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1506
    .end local v2           #uid:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1512
    :cond_1
    return-void
.end method

.method private updateRulesForUidLocked(I)V
    .locals 6
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    .line 1542
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v2

    .line 1543
    .local v2, uidPolicy:I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v1

    .line 1546
    .local v1, uidForeground:Z
    const/4 v3, 0x0

    .line 1547
    .local v3, uidRules:I
    if-nez v1, :cond_0

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    .line 1549
    const/4 v3, 0x1

    .line 1551
    :cond_0
    if-nez v1, :cond_1

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_1

    .line 1553
    const/4 v3, 0x1

    .line 1558
    :cond_1
    if-nez v3, :cond_2

    .line 1559
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1564
    :goto_0
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_3

    move v0, v4

    .line 1565
    .local v0, rejectMetered:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    .line 1568
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1572
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v4, p1, v1}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    :goto_2
    return-void

    .line 1561
    .end local v0           #rejectMetered:Z
    :cond_2
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1564
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1573
    .restart local v0       #rejectMetered:Z
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private updateScreenOn()V
    .locals 2

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 1497
    monitor-exit v1

    .line 1498
    return-void

    .line 1497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1493
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSimListInfo()V
    .locals 8

    .prologue
    .line 943
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimIdCount:I

    .line 945
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 951
    .local v3, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    .line 952
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimListInfo - DataActivedSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActivedSimId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 955
    .local v2, info:Landroid/provider/Telephony$SIMInfo;
    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_2

    .line 956
    iget-wide v4, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimId1:J

    .line 961
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimIdCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimIdCount:I

    goto :goto_0

    .line 946
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v3           #simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :catch_0
    move-exception v0

    .line 947
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "NetworkPolicy"

    const-string v5, "updateSimListInfo - SQLiteDiskIOException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_1
    return-void

    .line 957
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #info:Landroid/provider/Telephony$SIMInfo;
    .restart local v3       #simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_2
    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 958
    iget-wide v4, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimId2:J

    goto :goto_1
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1124
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1128
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1133
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1124
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writePolicyLocked()V
    .locals 12

    .prologue
    .line 1136
    const-string v9, "NetworkPolicy"

    const-string v10, "writePolicyLocked()"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/4 v1, 0x0

    .line 1140
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v9}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1142
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1143
    .local v4, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1144
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1146
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    const-string v9, "version"

    const/4 v10, 0x3

    invoke-static {v4, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1148
    const-string v9, "restrictBackground"

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1151
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 1152
    .local v5, policy:Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1154
    .local v7, template:Landroid/net/NetworkTemplate;
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    const-string v9, "networkTemplate"

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v10

    invoke-static {v4, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1156
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 1157
    .local v6, subscriberId:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1158
    const/4 v9, 0x0

    const-string v10, "subscriberId"

    invoke-interface {v4, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1160
    :cond_0
    const-string v9, "cycleDay"

    iget v10, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1161
    const-string v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1162
    const-string v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1163
    const-string v9, "lastSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1166
    const-string v9, "simId"

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSimId()J

    move-result-wide v10

    invoke-static {v4, v9, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1168
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1189
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #policy:Landroid/net/NetworkPolicy;
    .end local v6           #subscriberId:Ljava/lang/String;
    .end local v7           #template:Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v0

    .line 1190
    .local v0, e:Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1191
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v9, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1194
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 1172
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 1173
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1174
    .local v8, uid:I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1177
    .local v5, policy:I
    if-nez v5, :cond_3

    .line 1172
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1179
    :cond_3
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1180
    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1181
    const-string v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1182
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1185
    .end local v5           #policy:I
    .end local v8           #uid:I
    :cond_4
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1186
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1188
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v9, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1845
    return-void
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "connManager"

    .prologue
    .line 300
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 301
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .parameter "notifManager"

    .prologue
    .line 304
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 305
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 1389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DUMP"

    const-string v17, "NetworkPolicy"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1392
    .local v3, argSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v4, p3

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v2, v4, v7

    .line 1393
    .local v2, arg:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1392
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1396
    .end local v2           #arg:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1397
    :try_start_0
    const-string v15, "unsnooze"

    invoke-virtual {v3, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1398
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1399
    .local v10, policy:Landroid/net/NetworkPolicy;
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    iput-wide v0, v10, Landroid/net/NetworkPolicy;->lastSnooze:J

    goto :goto_1

    .line 1451
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1401
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1402
    const-string v15, "Wiped snooze timestamps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    monitor-exit v16

    .line 1452
    :goto_2
    return-void

    .line 1406
    .local v7, i$:I
    :cond_2
    const-string v15, "Restrict background: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Z)V

    .line 1407
    const-string v15, "Network policies:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1409
    .restart local v10       #policy:Landroid/net/NetworkPolicy;
    const-string v15, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1412
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :cond_3
    const-string v15, "Policy status for known UIDs:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1415
    .local v8, knownUids:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-static {v15, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-static {v15, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v15, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 1419
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    .line 1420
    .local v13, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v13, :cond_7

    .line 1421
    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 1422
    .local v14, uid:I
    const-string v15, "  UID="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1423
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 1425
    const-string v15, " policy="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    .line 1427
    .local v11, policyIndex:I
    if-gez v11, :cond_4

    .line 1428
    const-string v15, "UNKNOWN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1433
    :goto_5
    const-string v15, " foreground="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 1435
    .local v5, foregroundIndex:I
    if-gez v5, :cond_5

    .line 1436
    const-string v15, "UNKNOWN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    :goto_6
    const-string v15, " rules="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v12

    .line 1443
    .local v12, rulesIndex:I
    if-gez v12, :cond_6

    .line 1444
    const-string v15, "UNKNOWN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    :goto_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1420
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1430
    .end local v5           #foregroundIndex:I
    .end local v12           #rulesIndex:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Landroid/net/NetworkPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    goto :goto_5

    .line 1438
    .restart local v5       #foregroundIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseBooleanArray;

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpSparseBooleanArray(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    goto :goto_6

    .line 1446
    .restart local v12       #rulesIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Landroid/net/NetworkPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    goto :goto_7

    .line 1451
    .end local v5           #foregroundIndex:I
    .end local v11           #policyIndex:I
    .end local v12           #rulesIndex:I
    .end local v14           #uid:I
    :cond_7
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 3

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    monitor-exit v1

    return-object v0

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .parameter "state"

    .prologue
    .line 1340
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1346
    .local v0, token:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1346
    return-object v2

    .line 1348
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1325
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 1326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .parameter "uid"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDataConnOverLimit(J)Z
    .locals 15
    .parameter "simId"

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1772
    .local v10, policy:Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSimId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1773
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isDataConnOverLimit policy:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v13, -0x1

    cmp-long v0, v0, v13

    if-nez v0, :cond_1

    .line 1775
    const/4 v9, 0x0

    .line 1789
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :goto_0
    return v9

    .line 1777
    .restart local v10       #policy:Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v6

    .line 1779
    .local v6, currentTime:J
    invoke-static {v6, v7, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1780
    .local v2, start:J
    move-wide v4, v6

    .line 1781
    .local v4, end:J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v11

    .line 1782
    .local v11, totalBytes:J
    invoke-virtual {v10, v11, v12}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastSnooze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v9, 0x1

    .line 1783
    .local v9, overLimit:Z
    :goto_1
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isDataConnOverLimit isOver:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1782
    .end local v9           #overLimit:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1788
    .end local v2           #start:J
    .end local v4           #end:J
    .end local v6           #currentTime:J
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    .end local v11           #totalBytes:J
    :cond_3
    const-string v0, "NetworkPolicy"

    const-string v1, "isDataConnOverLimit no policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public isPolicyModified()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1762
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    if-eqz v1, :cond_0

    .line 1763
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1764
    const/4 v0, 0x1

    .line 1766
    :cond_0
    return v0
.end method

.method public isUidForeground(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    .line 1456
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1460
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    .line 1461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1239
    return-void
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 7
    .parameter "policies"

    .prologue
    .line 1251
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v4, "NetworkPolicy"

    const-string v5, "setNetworkPolicies"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1255
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1257
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1258
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1259
    move-object v0, p1

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1260
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1262
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1263
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1264
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1265
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1266
    monitor-exit v5

    .line 1267
    return-void

    .line 1266
    .end local v0           #arr$:[Landroid/net/NetworkPolicy;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setRestrictBackground(Z)V
    .locals 3
    .parameter "restrictBackground"

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRestrictBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1312
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1313
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1314
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 1315
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1316
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1317
    monitor-exit v1

    .line 1318
    return-void

    .line 1317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUidPolicy(II)V
    .locals 3
    .parameter "uid"
    .parameter "policy"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUidPolicy uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1205
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    .line 1206
    return-void
.end method

.method public snoozePolicy(Landroid/net/NetworkTemplate;)V
    .locals 8
    .parameter "template"

    .prologue
    const/4 v7, 0x1

    .line 1281
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "snoozePolicy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iput-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1285
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1286
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 1287
    .local v0, currentTime:J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1289
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 1290
    .local v3, policy:Landroid/net/NetworkPolicy;
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/net/NetworkPolicy;->active:Z

    goto :goto_0

    .line 1303
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1293
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 1294
    .restart local v3       #policy:Landroid/net/NetworkPolicy;
    if-nez v3, :cond_1

    .line 1295
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1297
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/net/NetworkPolicy;->active:Z

    .line 1298
    iput-wide v0, v3, Landroid/net/NetworkPolicy;->lastSnooze:J

    .line 1299
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1300
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1301
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1302
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1303
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    return-void
.end method

.method public systemReady()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 308
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 310
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 312
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 314
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 316
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 321
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 322
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v3, screenFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, connFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 340
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 341
    .local v2, packageFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 346
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 347
    .local v4, statsFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.ACTION_ALLOW_BACKGROUND"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, allowFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 354
    return-void

    .line 316
    .end local v0           #allowFilter:Landroid/content/IntentFilter;
    .end local v1           #connFilter:Landroid/content/IntentFilter;
    .end local v2           #packageFilter:Landroid/content/IntentFilter;
    .end local v3           #screenFilter:Landroid/content/IntentFilter;
    .end local v4           #statsFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 323
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1247
    return-void
.end method
