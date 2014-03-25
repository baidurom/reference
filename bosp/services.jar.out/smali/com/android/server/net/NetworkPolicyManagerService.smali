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
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field public static final ACTION_POLICYMGR_CREATED:Ljava/lang/String; = "com.mediatek.server.action.ACTION_POLICY_CREATED"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_ACTIVE:Ljava/lang/String; = "active"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_FOREGROUND_ACTIVITIES_CHANGED:I = 0x3

.field private static final MSG_INTERFACE_DOWN:I = 0x9

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_PROCESS_DIED:I = 0x4

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa


# instance fields
.field private iTel:Lcom/android/internal/telephony/ITelephony;

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

.field private mDataActiveSlot:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsInSlot:[Z

.field private mIsPolicyModified:Z

.field private mIsSlotEnable:[Z

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

.field private mMobileDataEnabled:Z

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

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private volatile mRestrictBackground:Z

.field private final mRulesLock:Ljava/lang/Object;

.field private volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldCheckNetworkEnable:Z

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriberId:[Ljava/lang/String;

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

.field private mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private supportSimNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .parameter "context"
    .parameter "activityManager"
    .parameter "powerManager"
    .parameter "networkStats"
    .parameter "networkManagement"

    .prologue
    .line 334
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

    .line 336
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
    .line 345
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 281
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    .line 283
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    .line 286
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 288
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 291
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 293
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    .line 296
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    .line 299
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 300
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    .line 303
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 463
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 494
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 511
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 542
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 560
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 586
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 609
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 623
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 637
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 665
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 707
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1053
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 2330
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 346
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 347
    const-string v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 348
    const-string v0, "missing powerManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 349
    const-string v0, "missing networkStats"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 350
    const-string v0, "missing networkManagement"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 351
    const-string v0, "missing TrustedTime"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TrustedTime;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 353
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 354
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 355
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 357
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 359
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "netpolicy.xml"

    invoke-direct {v1, p7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 362
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    .line 363
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->initDataUsageSimInfo(I)V

    .line 368
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDataUsageSimInsert()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDataUsageSimIMSI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removePoliciesForUserLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateMobileDataEnableStatus()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void
.end method

.method private addDefaultPolicy(Ljava/lang/String;Z)V
    .locals 16
    .parameter "subscriberId"
    .parameter "active"

    .prologue
    .line 2668
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no policy for active mobile network; generating default policy for subscriberId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #integer@config_networkPolicyDefaultWarning#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    const-wide/32 v9, 0x100000

    mul-long v5, v7, v9

    .line 2675
    .local v5, warningBytes:J
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 2676
    .local v15, time:Landroid/text/format/Time;
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 2678
    iget v3, v15, Landroid/text/format/Time;->monthDay:I

    .line 2679
    .local v3, cycleDay:I
    iget-object v4, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2681
    .local v4, cycleTimezone:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 2683
    .local v2, template:Landroid/net/NetworkTemplate;
    new-instance v1, Landroid/net/NetworkPolicy;

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 2686
    .local v1, policy:Landroid/net/NetworkPolicy;
    move/from16 v0, p2

    iput-boolean v0, v1, Landroid/net/NetworkPolicy;->active:Z

    .line 2687
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 2689
    return-void
.end method

.method private addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .parameter "policy"

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1904
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1905
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1906
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1907
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 2567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .parameter "template"

    .prologue
    .line 2577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2578
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2580
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2581
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2582
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .parameter "policy"
    .parameter "type"

    .prologue
    .line 880
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

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .parameter "template"

    .prologue
    .line 2571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2572
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2573
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .parameter "template"

    .prologue
    .line 2586
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2587
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2589
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2590
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2591
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v0           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 2607
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2608
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2609
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2611
    :cond_0
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 2600
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2601
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2602
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2604
    :cond_0
    return-void
.end method

.method private computeUidForegroundLocked(I)V
    .locals 7
    .parameter "uid"

    .prologue
    .line 2198
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 2201
    .local v2, pidForeground:Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    .line 2202
    .local v4, uidForeground:Z
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 2203
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2204
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2205
    const/4 v4, 0x1

    .line 2210
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2211
    .local v1, oldUidForeground:Z
    if-eq v1, v4, :cond_1

    .line 2213
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2214
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2216
    :cond_1
    return-void

    .line 2203
    .end local v1           #oldUidForeground:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

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
    .line 2614
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2616
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2617
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

    .line 2618
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2616
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2620
    :cond_1
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2621
    return-void
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 20
    .parameter "policy"
    .parameter "type"
    .parameter "totalBytes"

    .prologue
    .line 888
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v4

    .line 889
    .local v4, tag:Ljava/lang/String;
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 890
    .local v10, builder:Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 891
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 894
    .local v14, res:Landroid/content/res/Resources;
    const v2, #string@data_usage_warning_body#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 895
    .local v9, body:Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_0

    .line 988
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 991
    .local v7, idReceived:[I
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v10}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v6

    .line 993
    .local v6, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    .end local v3           #packageName:Ljava/lang/String;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #idReceived:[I
    :goto_1
    return-void

    .line 897
    :pswitch_0
    const v2, #string@data_usage_warning_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 898
    .local v16, title:Ljava/lang/CharSequence;
    const v2, #string@data_usage_warning_body#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 900
    const v2, #drawable@stat_notify_error#t

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 901
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 902
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 903
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 905
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v15

    .line 906
    .local v15, snoozeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x800

    invoke-static {v2, v5, v15, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 909
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v17

    .line 910
    .local v17, viewIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x800

    move-object/from16 v0, v17

    invoke-static {v2, v5, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 916
    .end local v15           #snoozeIntent:Landroid/content/Intent;
    .end local v16           #title:Ljava/lang/CharSequence;
    .end local v17           #viewIntent:Landroid/content/Intent;
    :pswitch_1
    const v2, #string@data_usage_limit_body#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 919
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 933
    const/16 v16, 0x0

    .line 937
    .restart local v16       #title:Ljava/lang/CharSequence;
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 938
    const v2, #drawable@stat_notify_disabled#t

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 939
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 940
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 941
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 943
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 944
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x800

    invoke-static {v2, v5, v11, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 921
    .end local v11           #intent:Landroid/content/Intent;
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_2
    const v2, #string@data_usage_3g_limit_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 922
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 924
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_3
    const v2, #string@data_usage_4g_limit_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 925
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 927
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_4
    const v2, #string@data_usage_mobile_limit_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 928
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 930
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_5
    const v2, #string@data_usage_wifi_limit_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 931
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 949
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v18, v0

    sub-long v12, p3, v18

    .line 950
    .local v12, overBytes:J
    const v2, #string@data_usage_limit_snoozed_body#t

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v8

    invoke-virtual {v14, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 954
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 968
    const/16 v16, 0x0

    .line 972
    .restart local v16       #title:Ljava/lang/CharSequence;
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 973
    const v2, #drawable@stat_notify_error#t

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 974
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 975
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 976
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 978
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 979
    .restart local v11       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x800

    invoke-static {v2, v5, v11, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 956
    .end local v11           #intent:Landroid/content/Intent;
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_7
    const v2, #string@data_usage_3g_limit_snoozed_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 957
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 959
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_8
    const v2, #string@data_usage_4g_limit_snoozed_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 960
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 962
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_9
    const v2, #string@data_usage_mobile_limit_snoozed_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 963
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 965
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_a
    const v2, #string@data_usage_wifi_limit_snoozed_title#t

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 966
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 997
    .end local v12           #overBytes:J
    .end local v16           #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 919
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 954
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 12
    .parameter "tag"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1007
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1008
    .local v10, res:Landroid/content/res/Resources;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1010
    .local v8, builder:Landroid/app/Notification$Builder;
    const v0, #string@data_usage_restricted_title#t

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1011
    .local v11, title:Ljava/lang/CharSequence;
    const v0, #string@data_usage_restricted_body#t

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1013
    .local v7, body:Ljava/lang/CharSequence;
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1014
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1015
    const v0, #drawable@stat_notify_error#t

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1016
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1017
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1018
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1020
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v9

    .line 1021
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v0, v3, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 1029
    .local v5, idReceived:[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v3, 0x0

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .end local v1           #packageName:Ljava/lang/String;
    .end local v5           #idReceived:[I
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1437
    const-string v1, "NetworkPolicy"

    const-string v2, "ensureActiveMobilePolicyLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v1, :cond_1

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    const/4 v11, 0x0

    .line 1442
    .local v11, policyChange:Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 1443
    .local v12, tele:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 1447
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_2

    .line 1448
    const-string v1, "NetworkPolicy"

    const-string v2, "ensureActiveMobilePolicyLocked ITelephony is not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1452
    :cond_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v7, v1, :cond_b

    .line 1454
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v7}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1452
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1455
    :cond_4
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v7}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 1456
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureActiveMobilePolicyLocked getSimState != SIM_STATE_READY no action SlotId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1480
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1460
    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v3, v1, v7

    .line 1461
    .local v3, subscriberId:Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1463
    .local v0, probeIdent:Landroid/net/NetworkIdentity;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureActiveMobilePolicyLocked  check subscriberId"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    if-eqz v3, :cond_6

    const-string v1, ""

    if-ne v3, v1, :cond_7

    .line 1465
    :cond_6
    const-string v1, "NetworkPolicy"

    const-string v2, "ensureActiveMobilePolicyLocked subscriberId=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1469
    :cond_7
    const/4 v9, 0x0

    .line 1470
    .local v9, mobileDefined:Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1471
    .local v10, policy:Landroid/net/NetworkPolicy;
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1472
    const/4 v9, 0x1

    goto :goto_3

    .line 1475
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :cond_9
    if-nez v9, :cond_3

    .line 1476
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    if-ne v1, v7, :cond_a

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultPolicy(Ljava/lang/String;Z)V

    .line 1478
    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1477
    :cond_a
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultPolicy(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1486
    .end local v0           #probeIdent:Landroid/net/NetworkIdentity;
    .end local v3           #subscriberId:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #mobileDefined:Z
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMobileDataEnabled:Z

    if-ne v1, v14, :cond_e

    .line 1487
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1488
    .restart local v10       #policy:Landroid/net/NetworkPolicy;
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    .line 1489
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSlotBySubscriberId(Ljava/lang/String;)I

    move-result v6

    .line 1490
    .local v6, currentslot:I
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    if-ne v1, v6, :cond_d

    .line 1491
    iput-boolean v14, v10, Landroid/net/NetworkPolicy;->active:Z

    goto :goto_5

    .line 1493
    :cond_d
    iput-boolean v13, v10, Landroid/net/NetworkPolicy;->active:Z

    goto :goto_5

    .line 1527
    .end local v6           #currentslot:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :cond_e
    if-eqz v11, :cond_0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendBroadcast()V

    goto/16 :goto_0
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .parameter "ident"

    .prologue
    .line 2013
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

    .line 2014
    .local v1, policy:Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2018
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2699
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2700
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 2702
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateMobileDataEnableStatus()V

    .line 2704
    const-string v1, ""

    .line 2706
    .local v1, subsId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 2707
    const-string v3, "NetworkPolicy"

    const-string v4, "updateMobileDataEnableStatus ITelephony is not ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_0
    :goto_0
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveSubscriberId subsId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    return-object v1

    .line 2708
    :cond_1
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2711
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    iget v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2712
    :catch_0
    move-exception v0

    .line 2714
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NetworkPolicy"

    const-string v4, "getActiveSubscriberId RemoteException Itelphony is not ready"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getITelephony()V
    .locals 1

    .prologue
    .line 2732
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    .line 2733
    return-void
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 23
    .parameter "state"

    .prologue
    .line 2040
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v20

    .line 2041
    .local v20, subId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v3, v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;Ljava/lang/String;)Landroid/net/NetworkIdentity;

    move-result-object v18

    .line 2042
    .local v18, ident:Landroid/net/NetworkIdentity;
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNetworkQuotaInfo for sim:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2051
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v19

    .line 2052
    .local v19, policy:Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2054
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2056
    :cond_0
    const/4 v9, 0x0

    .line 2072
    :goto_0
    return-object v9

    .line 2052
    .end local v19           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2059
    .restart local v19       #policy:Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .line 2062
    .local v16, currentTime:J
    move-wide/from16 v0, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    .line 2063
    .local v5, start:J
    move-wide/from16 v7, v16

    .line 2064
    .local v7, end:J
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 2067
    .local v10, totalBytes:J
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v21, -0x1

    cmp-long v3, v3, v21

    if-eqz v3, :cond_2

    move-object/from16 v0, v19

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2069
    .local v12, softLimitBytes:J
    :goto_1
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v21, -0x1

    cmp-long v3, v3, v21

    if-eqz v3, :cond_3

    move-object/from16 v0, v19

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2072
    .local v14, hardLimitBytes:J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .line 2067
    .end local v12           #softLimitBytes:J
    .end local v14           #hardLimitBytes:J
    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 2069
    .restart local v12       #softLimitBytes:J
    :cond_3
    const-wide/16 v14, -0x1

    goto :goto_2
.end method

.method private getSlotBySubscriberId(Ljava/lang/String;)I
    .locals 4
    .parameter "subscriberId"

    .prologue
    const/4 v1, -0x1

    .line 2737
    if-nez p1, :cond_1

    move v0, v1

    .line 2744
    :cond_0
    :goto_0
    return v0

    .line 2738
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v0, v2, :cond_3

    .line 2739
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    aget-boolean v2, v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2740
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2738
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2744
    goto :goto_0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 339
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 9
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    const-wide/16 v7, 0x0

    .line 2527
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v7

    .line 2535
    :goto_0
    return-wide v7

    .line 2529
    :catch_0
    move-exception v6

    .line 2530
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2532
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 2533
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUidRulesBaidu(II)I
    .locals 2
    .parameter "uidPolicy"
    .parameter "orgUidRules"

    .prologue
    .line 2321
    move v0, p2

    .line 2322
    .local v0, uidRules:I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 2324
    const/4 v0, 0x1

    .line 2326
    :cond_0
    return v0
.end method

.method private initDataUsageSimInfo(I)V
    .locals 5
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    .line 2761
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDataUsageSimInfo num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    .line 2763
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    .line 2764
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    .line 2765
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2766
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    aput-boolean v4, v1, v0

    .line 2767
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 2768
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    aput-boolean v4, v1, v0

    .line 2765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2770
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    .line 2771
    return-void
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 2540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2542
    .local v1, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2547
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2545
    return v3

    .line 2543
    :catch_0
    move-exception v0

    .line 2545
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0

    .line 2547
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isInsertSubscriberId(Ljava/lang/String;)Z
    .locals 4
    .parameter "subscriberId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2747
    if-nez p1, :cond_1

    .line 2754
    :cond_0
    :goto_0
    return v1

    .line 2748
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v0, v3, :cond_0

    .line 2749
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    aget-boolean v3, v3, v0

    if-ne v3, v2, :cond_2

    .line 2750
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 2748
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 5
    .parameter "template"

    .prologue
    const/4 v2, 0x0

    .line 811
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 814
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 855
    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    .line 824
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 826
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_2

    .line 827
    const-string v3, "NetworkPolicy"

    const-string v4, "isTemplateRelevant ITelephony is not ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v2

    .line 843
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 830
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getSlotBySubscriberId(Ljava/lang/String;)I

    move-result v0

    .line 831
    .local v0, slotId:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 835
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 836
    const-string v3, "NetworkPolicy"

    const-string v4, "isTemplateRelevant getSimState != SIM_STATE_READY no action"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 2269
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2271
    :cond_0
    const/4 v0, 0x1

    .line 2274
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 2559
    :cond_0
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 2
    .parameter "template"

    .prologue
    .line 863
    const-string v0, "NetworkPolicy"

    const-string v1, "notifyOverLimitLocked overlimit"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    const-string v0, "NetworkPolicy"

    const-string v1, "notifyOverLimitLocked buildNetworkOverLimitIntent"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 867
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .parameter "template"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 873
    return-void
.end method

.method private performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8
    .parameter "template"
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    .line 1937
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1938
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 1939
    .local v0, currentTime:J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1943
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 1944
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_0

    .line 1945
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/net/NetworkPolicy;->active:Z

    goto :goto_0

    .line 1981
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1950
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 1951
    .restart local v3       #policy:Landroid/net/NetworkPolicy;
    if-nez v3, :cond_2

    .line 1952
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

    .line 1956
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/net/NetworkPolicy;->active:Z

    .line 1957
    packed-switch p2, :pswitch_data_0

    .line 1965
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "unexpected type"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1959
    :pswitch_0
    iput-wide v0, v3, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 1968
    :goto_1
    if-ne p2, v7, :cond_3

    .line 1969
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 1970
    const-string v4, "NetworkPolicy"

    const-string v6, " performSnooze call updateNetworkEnabledLocked true"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1978
    :goto_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1979
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1980
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1981
    monitor-exit v5

    .line 1982
    return-void

    .line 1962
    :pswitch_1
    iput-wide v0, v3, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    goto :goto_1

    .line 1973
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 1974
    const-string v4, "NetworkPolicy"

    const-string v6, " performSnooze call updateNetworkEnabledLocked false"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1957
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readPolicyLocked()V
    .locals 32

    .prologue
    .line 1530
    const-string v29, "NetworkPolicy"

    const-string v30, "readPolicyLocked()"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->clear()V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseIntArray;->clear()V

    .line 1536
    const/16 v20, 0x0

    .line 1538
    .local v20, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v20

    .line 1539
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 1540
    .local v21, in:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1543
    const/16 v28, 0x1

    .line 1544
    .local v28, version:I
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, type:I
    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 1545
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1546
    .local v25, tag:Ljava/lang/String;
    const/16 v29, 0x2

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 1547
    const-string v29, "policy-list"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1548
    const-string v29, "version"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1549
    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    .line 1550
    const-string v29, "restrictBackground"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1654
    .end local v21           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v25           #tag:Ljava/lang/String;
    .end local v26           #type:I
    .end local v28           #version:I
    :catch_0
    move-exception v19

    .line 1656
    .local v19, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1665
    .end local v19           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1667
    return-void

    .line 1553
    .restart local v21       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25       #tag:Ljava/lang/String;
    .restart local v26       #type:I
    .restart local v28       #version:I
    :cond_2
    const/16 v29, 0x0

    :try_start_2
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1657
    .end local v21           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v25           #tag:Ljava/lang/String;
    .end local v26           #type:I
    .end local v28           #version:I
    :catch_1
    move-exception v19

    .line 1660
    .local v19, e:Ljava/io/IOException;
    :try_start_3
    const-string v29, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1665
    .end local v19           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v29

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v29

    .line 1556
    .restart local v21       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25       #tag:Ljava/lang/String;
    .restart local v26       #type:I
    .restart local v28       #version:I
    :cond_3
    :try_start_4
    const-string v29, "network-policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 1557
    const-string v29, "networkTemplate"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1558
    .local v23, networkTemplate:I
    const/16 v29, 0x0

    const-string v30, "subscriberId"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1560
    .local v24, subscriberId:Ljava/lang/String;
    const/16 v29, 0x9

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_4

    .line 1561
    const/16 v29, 0x0

    const-string v30, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1565
    .local v22, networkId:Ljava/lang/String;
    :goto_2
    const-string v29, "cycleDay"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 1567
    .local v5, cycleDay:I
    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    .line 1568
    const/16 v29, 0x0

    const-string v30, "cycleTimezone"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1572
    .local v6, cycleTimezone:Ljava/lang/String;
    :goto_3
    const-string v29, "warningBytes"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    .line 1573
    .local v7, warningBytes:J
    const-string v29, "limitBytes"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    .line 1575
    .local v9, limitBytes:J
    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    .line 1576
    const-string v29, "lastLimitSnooze"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .line 1583
    .local v13, lastLimitSnooze:J
    :goto_4
    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    .line 1584
    const-string v29, "metered"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    .line 1597
    .local v15, metered:Z
    :goto_5
    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_9

    .line 1598
    const-string v29, "lastWarningSnooze"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v11

    .line 1603
    .local v11, lastWarningSnooze:J
    :goto_6
    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_a

    .line 1604
    const-string v29, "inferred"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1612
    .local v16, inferred:Z
    :goto_7
    const-string v29, "active"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 1617
    .local v17, active:Z
    new-instance v4, Landroid/net/NetworkTemplate;

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v4, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1619
    .local v4, template:Landroid/net/NetworkTemplate;
    new-instance v3, Landroid/net/NetworkPolicy;

    invoke-direct/range {v3 .. v16}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1623
    .local v3, policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    move/from16 v0, v17

    iput-boolean v0, v3, Landroid/net/NetworkPolicy;->active:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1661
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    .end local v4           #template:Landroid/net/NetworkTemplate;
    .end local v5           #cycleDay:I
    .end local v6           #cycleTimezone:Ljava/lang/String;
    .end local v7           #warningBytes:J
    .end local v9           #limitBytes:J
    .end local v11           #lastWarningSnooze:J
    .end local v13           #lastLimitSnooze:J
    .end local v15           #metered:Z
    .end local v16           #inferred:Z
    .end local v17           #active:Z
    .end local v21           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #networkId:Ljava/lang/String;
    .end local v23           #networkTemplate:I
    .end local v24           #subscriberId:Ljava/lang/String;
    .end local v25           #tag:Ljava/lang/String;
    .end local v26           #type:I
    .end local v28           #version:I
    :catch_2
    move-exception v19

    .line 1663
    .local v19, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v29, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1563
    .end local v19           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v21       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23       #networkTemplate:I
    .restart local v24       #subscriberId:Ljava/lang/String;
    .restart local v25       #tag:Ljava/lang/String;
    .restart local v26       #type:I
    .restart local v28       #version:I
    :cond_4
    const/16 v22, 0x0

    .restart local v22       #networkId:Ljava/lang/String;
    goto/16 :goto_2

    .line 1570
    .restart local v5       #cycleDay:I
    :cond_5
    :try_start_6
    const-string v6, "UTC"

    .restart local v6       #cycleTimezone:Ljava/lang/String;
    goto/16 :goto_3

    .line 1577
    .restart local v7       #warningBytes:J
    .restart local v9       #limitBytes:J
    :cond_6
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    .line 1578
    const-string v29, "lastSnooze"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .restart local v13       #lastLimitSnooze:J
    goto/16 :goto_4

    .line 1580
    .end local v13           #lastLimitSnooze:J
    :cond_7
    const-wide/16 v13, -0x1

    .restart local v13       #lastLimitSnooze:J
    goto/16 :goto_4

    .line 1586
    :cond_8
    packed-switch v23, :pswitch_data_0

    .line 1593
    const/4 v15, 0x0

    .restart local v15       #metered:Z
    goto/16 :goto_5

    .line 1590
    .end local v15           #metered:Z
    :pswitch_0
    const/4 v15, 0x1

    .line 1591
    .restart local v15       #metered:Z
    goto/16 :goto_5

    .line 1600
    :cond_9
    const-wide/16 v11, -0x1

    .restart local v11       #lastWarningSnooze:J
    goto :goto_6

    .line 1606
    :cond_a
    const/16 v16, 0x0

    .restart local v16       #inferred:Z
    goto :goto_7

    .line 1630
    .end local v5           #cycleDay:I
    .end local v6           #cycleTimezone:Ljava/lang/String;
    .end local v7           #warningBytes:J
    .end local v9           #limitBytes:J
    .end local v11           #lastWarningSnooze:J
    .end local v13           #lastLimitSnooze:J
    .end local v15           #metered:Z
    .end local v16           #inferred:Z
    .end local v22           #networkId:Ljava/lang/String;
    .end local v23           #networkTemplate:I
    .end local v24           #subscriberId:Ljava/lang/String;
    :cond_b
    const-string v29, "uid-policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 1631
    const-string v29, "uid"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v27

    .line 1632
    .local v27, uid:I
    const-string v29, "policy"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 1634
    .local v3, policy:I
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1635
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto/16 :goto_0

    .line 1637
    :cond_c
    const-string v29, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1639
    .end local v3           #policy:I
    .end local v27           #uid:I
    :cond_d
    const-string v29, "app-policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1640
    const-string v29, "appId"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 1641
    .local v18, appId:I
    const-string v29, "policy"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 1644
    .restart local v3       #policy:I
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v27

    .line 1645
    .restart local v27       #uid:I
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 1646
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto/16 :goto_0

    .line 1648
    :cond_e
    const-string v29, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1586
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 4
    .parameter "iface"

    .prologue
    .line 2494
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2501
    :goto_0
    return-void

    .line 2495
    :catch_0
    move-exception v0

    .line 2497
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem removing interface quota:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2498
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private removePoliciesForUserLocked(I)V
    .locals 8
    .parameter "userId"

    .prologue
    .line 1813
    const-string v6, "NetworkPolicy"

    const-string v7, "removePoliciesForUserLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 1816
    .local v5, uids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1817
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1818
    .local v4, uid:I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 1819
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 1816
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1823
    .end local v4           #uid:I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 1824
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 1825
    .restart local v4       #uid:I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1826
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1824
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1828
    .end local v4           #uid:I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1830
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    return-void
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 2854
    const-string v1, "NetworkPolicy"

    const-string v2, "sendBroadcast ACTION_POLICYMGR_CREATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2856
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2857
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2858
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2859
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .parameter "iface"
    .parameter "quotaBytes"

    .prologue
    .line 2481
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

    .line 2483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2490
    :goto_0
    return-void

    .line 2484
    :catch_0
    move-exception v0

    .line 2486
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem setting interface quota:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2487
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 5
    .parameter "template"
    .parameter "enabled"

    .prologue
    const/4 v3, -0x1

    .line 1181
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1182
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 1184
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1255
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unexpected template"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1195
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 1196
    const-string v2, "NetworkPolicy"

    const-string v3, "setNetworkTemplateEnabled ITelephony is not ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :goto_0
    return-void

    .line 1199
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getSlotBySubscriberId(Ljava/lang/String;)I

    move-result v0

    .line 1200
    .local v0, slotId:I
    if-ne v0, v3, :cond_1

    .line 1201
    const-string v2, "NetworkPolicy"

    const-string v3, "setNetworkTemplateEnabled getSlotById =-1"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1217
    .end local v0           #slotId:I
    :catch_0
    move-exception v2

    .line 1245
    :goto_1
    const/4 v2, 0x6

    invoke-direct {p0, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1205
    .restart local v0       #slotId:I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 1206
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimState != SIM_STATE_READY no action1 SlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1209
    :cond_2
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetworkTemplateEnabled ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    if-eqz p2, :cond_3

    .line 1211
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v0}, Landroid/net/IConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_1

    .line 1213
    :cond_3
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->setMobileDataEnabledGemini(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1249
    .end local v0           #slotId:I
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1252
    :pswitch_2
    const/16 v2, 0x9

    invoke-direct {p0, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1184
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
    .line 2519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setPolicyDataEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2523
    :goto_0
    return-void

    .line 2520
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUidNetworkRules(IZ)V
    .locals 3
    .parameter "uid"
    .parameter "rejectOnQuotaInterfaces"

    .prologue
    .line 2505
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2512
    :goto_0
    return-void

    .line 2506
    :catch_0
    move-exception v0

    .line 2508
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2509
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
    .line 1770
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1771
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v0

    .line 1772
    .local v0, oldPolicy:I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1775
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1776
    if-eqz p3, :cond_0

    .line 1777
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1779
    :cond_0
    monitor-exit v2

    .line 1780
    return-void

    .line 1779
    .end local v0           #oldPolicy:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateDataUsageSimIMSI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2799
    const-string v3, "NetworkPolicy"

    const-string v4, "updateDataUsageSimIMSI"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2803
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 2804
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 2805
    const-string v3, "NetworkPolicy"

    const-string v4, "updateDataUsageSimIMSI Itelphony is not ready"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    :cond_0
    return-void

    .line 2809
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v1, v3, :cond_0

    .line 2810
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    aget-boolean v3, v3, v1

    if-ne v3, v6, :cond_3

    .line 2813
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    :goto_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, ""

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v1

    .line 2825
    :goto_2
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataUsageSimIMSI mSubscriberId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2814
    :catch_0
    move-exception v0

    .line 2816
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NetworkPolicy"

    const-string v4, "updateDataUsageSimIMSI RemoteException Itelphony is not ready"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2819
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    aput-boolean v6, v3, v1

    goto :goto_2
.end method

.method private updateDataUsageSimInsert()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2776
    const-string v2, "NetworkPolicy"

    const-string v3, "updateDataUsageSimInsert"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 2779
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 2780
    const-string v2, "NetworkPolicy"

    const-string v3, "updateDataUsageSimInsert Itelphony is not ready"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_0
    return-void

    .line 2783
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v1, v2, :cond_0

    .line 2784
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 2786
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 2787
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 2788
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataUsageSimInsert mSimSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is inserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2783
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2790
    :catch_0
    move-exception v0

    .line 2792
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NetworkPolicy"

    const-string v3, "updateDataUsageSimInsert RemoteException Itelphony is not ready"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateMobileDataEnableStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2833
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    .line 2834
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMobileDataEnabled:Z

    .line 2835
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v0, v1, :cond_1

    .line 2836
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    aget-boolean v1, v1, v0

    if-ne v1, v4, :cond_0

    .line 2838
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, v0}, Landroid/net/IConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2839
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    .line 2840
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMobileDataEnabled:Z

    .line 2841
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMobileDataEnableStatus mDataActiveSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2835
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2849
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 2852
    :cond_1
    return-void
.end method

.method private updateNetworkEnabledLocked(Z)V
    .locals 21
    .parameter "isIgnore"

    .prologue
    .line 1081
    const-string v2, "NetworkPolicy"

    const-string v3, "updateNetworkEnabledLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/16 v16, 0x1

    .line 1098
    .local v16, shoudlCheckMobile:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1099
    .local v8, currentTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    .line 1101
    .local v14, policy:Landroid/net/NetworkPolicy;
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " checking policy:"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v11

    .line 1107
    .local v11, matchRule:I
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v15

    .line 1108
    .local v15, policySubId:Ljava/lang/String;
    const/4 v2, 0x4

    if-ne v11, v2, :cond_2

    .line 1126
    :cond_0
    iget-wide v2, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v19, -0x1

    cmp-long v2, v2, v19

    if-eqz v2, :cond_1

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1129
    :cond_1
    if-eqz p1, :cond_4

    const/4 v2, 0x4

    if-eq v11, v2, :cond_4

    .line 1130
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1110
    :cond_2
    iget-boolean v2, v14, Landroid/net/NetworkPolicy;->active:Z

    if-eqz v2, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->isInsertSubscriberId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1111
    :cond_3
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore this policy"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1134
    :cond_4
    if-eqz p1, :cond_5

    const/4 v2, 0x4

    if-eq v11, v2, :cond_5

    .line 1135
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    :cond_5
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_0

    .line 1145
    :cond_6
    invoke-static {v8, v9, v14}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1146
    .local v4, start:J
    move-wide v6, v8

    .line 1147
    .local v6, end:J
    iget-object v3, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v17

    .line 1150
    .local v17, totalBytes:J
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " totalBytes:"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "start= "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "  end= "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    const/4 v13, 0x1

    .line 1155
    .local v13, overLimitWithoutSnooze:Z
    :goto_1
    if-nez v13, :cond_8

    const/4 v12, 0x1

    .line 1158
    .local v12, networkEnabled:Z
    :goto_2
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " overLimitWithoutSnooze:"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "policy.lastLimitSnooze= "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    if-eqz p1, :cond_9

    if-eqz v12, :cond_9

    .line 1163
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1153
    .end local v12           #networkEnabled:Z
    .end local v13           #overLimitWithoutSnooze:Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    .line 1155
    .restart local v13       #overLimitWithoutSnooze:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 1167
    .restart local v12       #networkEnabled:Z
    :cond_9
    if-eqz p1, :cond_a

    if-eqz v12, :cond_a

    .line 1168
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1170
    :cond_a
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto/16 :goto_0

    .line 1174
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v11           #matchRule:I
    .end local v12           #networkEnabled:Z
    .end local v13           #overLimitWithoutSnooze:Z
    .end local v14           #policy:Landroid/net/NetworkPolicy;
    .end local v15           #policySubId:Ljava/lang/String;
    .end local v17           #totalBytes:J
    :cond_b
    return-void
.end method

.method private updateNetworkRulesLocked()V
    .locals 40

    .prologue
    .line 1265
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string v27, ""

    .line 1268
    .local v27, mmsifacename:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1272
    .local v14, flag:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v35

    .line 1280
    .local v35, states:[Landroid/net/NetworkState;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v28

    .line 1281
    .local v28, networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    move-object/from16 v11, v35

    .local v11, arr$:[Landroid/net/NetworkState;
    array-length v0, v11

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v34, v11, v17

    .line 1283
    .local v34, state:Landroid/net/NetworkState;
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1284
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    .line 1289
    .local v20, iface:Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v33

    .line 1290
    .local v33, slotId:I
    const-string v10, ""

    .line 1291
    .local v10, activeSubscriberId:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_0

    .line 1294
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    move/from16 v0, v33

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 1300
    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    const-string v4, ""

    if-ne v10, v4, :cond_2

    .line 1301
    :cond_1
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateNetworkRulesLocked getSubscriberId=null no build ident slotId="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v38, " iface="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v38, " state.networkInfo.getType() ="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/NetworkInfo;->getType()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-static {v4, v0, v10}, Landroid/net/NetworkIdentity;->buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;Ljava/lang/String;)Landroid/net/NetworkIdentity;

    move-result-object v19

    .line 1305
    .local v19, ident:Landroid/net/NetworkIdentity;
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "build net ident for sim:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1313
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked() TYPE_MOBILE_MMS"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v27

    .line 1315
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateNetworkRulesLocked() mmsifacename="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const/4 v14, 0x1

    .line 1318
    :cond_3
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    .end local v10           #activeSubscriberId:Ljava/lang/String;
    .end local v19           #ident:Landroid/net/NetworkIdentity;
    .end local v20           #iface:Ljava/lang/String;
    .end local v33           #slotId:I
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1273
    .end local v11           #arr$:[Landroid/net/NetworkState;
    .end local v17           #i$:I
    .end local v23           #len$:I
    .end local v28           #networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .end local v34           #state:Landroid/net/NetworkState;
    .end local v35           #states:[Landroid/net/NetworkState;
    :catch_0
    move-exception v12

    .line 1430
    :goto_2
    return-void

    .line 1295
    .restart local v10       #activeSubscriberId:Ljava/lang/String;
    .restart local v11       #arr$:[Landroid/net/NetworkState;
    .restart local v17       #i$:I
    .restart local v20       #iface:Ljava/lang/String;
    .restart local v23       #len$:I
    .restart local v28       #networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .restart local v33       #slotId:I
    .restart local v34       #state:Landroid/net/NetworkState;
    .restart local v35       #states:[Landroid/net/NetworkState;
    :catch_1
    move-exception v12

    .line 1297
    .local v12, e:Landroid/os/RemoteException;
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked RemoteException Itelphony is not ready"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1324
    .end local v10           #activeSubscriberId:Ljava/lang/String;
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v20           #iface:Ljava/lang/String;
    .end local v33           #slotId:I
    .end local v34           #state:Landroid/net/NetworkState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1325
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1326
    .local v21, ifaceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17           #i$:I
    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/NetworkPolicy;

    .line 1329
    .local v30, policy:Landroid/net/NetworkPolicy;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 1330
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1331
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/NetworkIdentity;

    .line 1332
    .restart local v19       #ident:Landroid/net/NetworkIdentity;
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1333
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "add iface for policy:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1335
    .restart local v20       #iface:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1339
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .end local v19           #ident:Landroid/net/NetworkIdentity;
    .end local v20           #iface:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1340
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    .line 1341
    .local v22, ifaces:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1345
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #ifaces:[Ljava/lang/String;
    .end local v30           #policy:Landroid/net/NetworkPolicy;
    :cond_9
    const-wide v24, 0x7fffffffffffffffL

    .line 1346
    .local v24, lowestRule:J
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v29

    .line 1350
    .local v29, newMeteredIfaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1351
    .local v8, currentTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v11           #arr$:[Landroid/net/NetworkState;
    :cond_a
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/NetworkPolicy;

    .line 1352
    .restart local v30       #policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    .line 1355
    .restart local v22       #ifaces:[Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1356
    move-object/from16 v0, v30

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1357
    .local v6, start:J
    move-object/from16 v0, v30

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v36

    .line 1362
    .local v36, totalBytes:J
    :goto_6
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "RulesLocked totalBytes:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "applying policy "

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v38, " to ifaces "

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v38, -0x1

    cmp-long v4, v4, v38

    if-eqz v4, :cond_f

    const/16 v16, 0x1

    .line 1370
    .local v16, hasWarning:Z
    :goto_7
    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v38, -0x1

    cmp-long v4, v4, v38

    if-eqz v4, :cond_10

    const/4 v15, 0x1

    .line 1371
    .local v15, hasLimit:Z
    :goto_8
    if-nez v15, :cond_b

    move-object/from16 v0, v30

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_16

    .line 1373
    :cond_b
    if-nez v15, :cond_11

    .line 1376
    const-wide v31, 0x7fffffffffffffffL

    .line 1388
    .local v31, quotaBytes:J
    :goto_9
    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    .line 1390
    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_c
    move-object/from16 v11, v22

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v23, v0

    const/16 v18, 0x0

    .local v18, i$:I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_16

    aget-object v20, v11, v18

    .line 1394
    .restart local v20       #iface:Ljava/lang/String;
    if-eqz v20, :cond_d

    const-string v4, ""

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_13

    .line 1393
    :cond_d
    :goto_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1359
    .end local v6           #start:J
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #hasLimit:Z
    .end local v16           #hasWarning:Z
    .end local v18           #i$:I
    .end local v20           #iface:Ljava/lang/String;
    .end local v31           #quotaBytes:J
    .end local v36           #totalBytes:J
    :cond_e
    const-wide v6, 0x7fffffffffffffffL

    .line 1360
    .restart local v6       #start:J
    const-wide/16 v36, 0x0

    .restart local v36       #totalBytes:J
    goto/16 :goto_6

    .line 1369
    :cond_f
    const/16 v16, 0x0

    goto :goto_7

    .line 1370
    .restart local v16       #hasWarning:Z
    :cond_10
    const/4 v15, 0x0

    goto :goto_8

    .line 1377
    .restart local v15       #hasLimit:Z
    :cond_11
    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_12

    .line 1380
    const-wide v31, 0x7fffffffffffffffL

    .restart local v31       #quotaBytes:J
    goto :goto_9

    .line 1385
    .end local v31           #quotaBytes:J
    :cond_12
    const-wide/16 v4, 0x1

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v38, v0

    sub-long v38, v38, v36

    move-wide/from16 v0, v38

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v31

    .restart local v31       #quotaBytes:J
    goto :goto_9

    .line 1395
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v20       #iface:Ljava/lang/String;
    :cond_13
    const/4 v4, 0x1

    if-ne v14, v4, :cond_14

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 1396
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "mmsifacename set quota mms ifacename="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const-wide v31, 0x7fffffffffffffffL

    .line 1399
    :cond_14
    move-object/from16 v0, v30

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->active:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    const/4 v4, 0x1

    if-ne v14, v4, :cond_d

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 1400
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1401
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1402
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 1408
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v20           #iface:Ljava/lang/String;
    .end local v31           #quotaBytes:J
    :cond_16
    if-eqz v16, :cond_17

    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v24

    if-gez v4, :cond_17

    .line 1409
    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v24, v0

    .line 1411
    :cond_17
    if-eqz v15, :cond_a

    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v24

    if-gez v4, :cond_a

    .line 1412
    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v24, v0

    goto/16 :goto_5

    .line 1416
    .end local v6           #start:J
    .end local v15           #hasLimit:Z
    .end local v16           #hasWarning:Z
    .end local v22           #ifaces:[Ljava/lang/String;
    .end local v30           #policy:Landroid/net/NetworkPolicy;
    .end local v36           #totalBytes:J
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_19
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1420
    .restart local v20       #iface:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1421
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateNetworkRulesLocked removeqta:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    goto :goto_c

    .line 1425
    .end local v20           #iface:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 1427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/String;

    .line 1428
    .local v26, meteredIfaces:[Ljava/lang/String;
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateNetworkRulesLocked meteredIfaces num:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->size()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2
.end method

.method private updateNotificationsLocked()V
    .locals 15

    .prologue
    .line 735
    const-string v0, "NetworkPolicy"

    const-string v1, "updateNotificationsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 739
    .local v6, beforeNotifs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 740
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 746
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v7

    .line 747
    .local v7, currentTime:J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 750
    .local v10, policy:Landroid/net/NetworkPolicy;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " checking policy:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v10, Landroid/net/NetworkPolicy;->active:Z

    if-nez v0, :cond_2

    .line 754
    :cond_1
    const-string v0, "NetworkPolicy"

    const-string v1, " ignore this policy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-static {v7, v8, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 764
    .local v2, start:J
    move-wide v4, v7

    .line 765
    .local v4, end:J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 768
    .local v12, totalBytes:J
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NotificationsLocked totalBytes:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "  start="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "  end="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 771
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 772
    const/4 v0, 0x3

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_0

    .line 774
    :cond_3
    const-string v0, "NetworkPolicy"

    const-string v1, "NotificationsLocked overlimit"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v0, 0x2

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 776
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto/16 :goto_0

    .line 780
    :cond_4
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 782
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 783
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_0

    .line 789
    .end local v2           #start:J
    .end local v4           #end:J
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    .end local v12           #totalBytes:J
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v0, :cond_6

    .line 790
    const-string v0, "NetworkPolicy:allowBackground"

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 794
    :cond_6
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 795
    .local v11, tag:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 796
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 799
    .end local v11           #tag:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .locals 11

    .prologue
    .line 2247
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2248
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 2251
    .local v6, um:Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2252
    .local v8, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v9, 0x2200

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2255
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2256
    .local v7, user:Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2257
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2258
    .local v5, uid:I
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 2263
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #uid:I
    .end local v7           #user:Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v9, 0x3f5

    invoke-direct {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2264
    const/16 v9, 0x3fb

    invoke-direct {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2265
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 4

    .prologue
    .line 2234
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2235
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2236
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2237
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2238
    .local v2, uid:I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2235
    .end local v2           #uid:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2241
    :cond_1
    return-void
.end method

.method private updateRulesForUidLocked(I)V
    .locals 6
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    .line 2278
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2317
    :goto_0
    return-void

    .line 2280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v2

    .line 2281
    .local v2, uidPolicy:I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v1

    .line 2284
    .local v1, uidForeground:Z
    const/4 v3, 0x0

    .line 2285
    .local v3, uidRules:I
    if-nez v1, :cond_1

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_1

    .line 2287
    const/4 v3, 0x1

    .line 2289
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_2

    .line 2291
    const/4 v3, 0x1

    .line 2294
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidRulesBaidu(II)I

    move-result v3

    .line 2299
    if-nez v3, :cond_3

    .line 2300
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2305
    :goto_1
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_4

    move v0, v4

    .line 2306
    .local v0, rejectMetered:Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    .line 2309
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2313
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v4, p1, v1}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2314
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2302
    .end local v0           #rejectMetered:Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 2305
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateScreenOn()V
    .locals 2

    .prologue
    .line 2219
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 2226
    monitor-exit v1

    .line 2227
    return-void

    .line 2226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1674
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1678
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1683
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1674
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writePolicyLocked()V
    .locals 13

    .prologue
    .line 1686
    const-string v10, "NetworkPolicy"

    const-string v11, "writePolicyLocked()"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const/4 v1, 0x0

    .line 1690
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1692
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1693
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v5, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1694
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1696
    const/4 v10, 0x0

    const-string v11, "policy-list"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1697
    const-string v10, "version"

    const/16 v11, 0xa

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1698
    const-string v10, "restrictBackground"

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1701
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 1702
    .local v6, policy:Landroid/net/NetworkPolicy;
    iget-object v8, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1704
    .local v8, template:Landroid/net/NetworkTemplate;
    const/4 v10, 0x0

    const-string v11, "network-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1705
    const-string v10, "networkTemplate"

    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v11

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1706
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 1707
    .local v7, subscriberId:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1708
    const/4 v10, 0x0

    const-string v11, "subscriberId"

    invoke-interface {v5, v10, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1710
    :cond_0
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 1711
    .local v4, networkId:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1712
    const/4 v10, 0x0

    const-string v11, "networkId"

    invoke-interface {v5, v10, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1714
    :cond_1
    const-string v10, "cycleDay"

    iget v11, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1715
    const/4 v10, 0x0

    const-string v11, "cycleTimezone"

    iget-object v12, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1716
    const-string v10, "warningBytes"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1717
    const-string v10, "limitBytes"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1718
    const-string v10, "lastWarningSnooze"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1719
    const-string v10, "lastLimitSnooze"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1720
    const-string v10, "metered"

    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1721
    const-string v10, "inferred"

    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1725
    const-string v10, "active"

    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->active:Z

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1728
    const/4 v10, 0x0

    const-string v11, "network-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1749
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #networkId:Ljava/lang/String;
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #policy:Landroid/net/NetworkPolicy;
    .end local v7           #subscriberId:Ljava/lang/String;
    .end local v8           #template:Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v0

    .line 1750
    .local v0, e:Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 1751
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1754
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 1732
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 1733
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 1734
    .local v9, uid:I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 1737
    .local v6, policy:I
    if-nez v6, :cond_4

    .line 1732
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1739
    :cond_4
    const/4 v10, 0x0

    const-string v11, "uid-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1740
    const-string v10, "uid"

    invoke-static {v5, v10, v9}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1741
    const-string v10, "policy"

    invoke-static {v5, v10, v6}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1742
    const/4 v10, 0x0

    const-string v11, "uid-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1745
    .end local v6           #policy:I
    .end local v9           #uid:I
    :cond_5
    const/4 v10, 0x0

    const-string v11, "policy-list"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1746
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1748
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2597
    return-void
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "connManager"

    .prologue
    .line 371
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 372
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .parameter "notifManager"

    .prologue
    .line 375
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 376
    return-void
.end method

.method public checkDataConnOverLimit()Z
    .locals 18

    .prologue
    .line 2919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 2920
    .local v13, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v12

    .line 2921
    .local v12, subsId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2923
    .local v10, overLimit:Z
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 2924
    const-string v1, "NetworkPolicy"

    const-string v2, "SIM_STATE_READY isds not ready"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    const/4 v1, 0x0

    .line 2954
    :goto_0
    return v1

    .line 2929
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v7

    .line 2930
    .local v7, currentTime:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 2931
    .local v11, policy:Landroid/net/NetworkPolicy;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDataConnOverLimit template.getSubscriberId:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2934
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2936
    iget-wide v1, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v16, -0x1

    cmp-long v1, v1, v16

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 2938
    :cond_2
    invoke-static {v7, v8, v11}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v3

    .line 2939
    .local v3, start:J
    move-wide v5, v7

    .line 2940
    .local v5, end:J
    iget-object v2, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 2942
    .local v14, totalBytes:J
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDataConnOverLimit totalBytes:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDataConnOverLimit policy:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    invoke-virtual {v11, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v11, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 2946
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 2948
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2952
    .end local v3           #start:J
    .end local v5           #end:J
    .end local v11           #policy:Landroid/net/NetworkPolicy;
    .end local v14           #totalBytes:J
    :cond_4
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDataConnOverLimit overLimit:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v10

    .line 2954
    goto/16 :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 2102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    const-string v16, "NetworkPolicy"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v14, "  "

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2106
    .local v5, fout:Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2107
    .local v2, argSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v1, v3, v7

    .line 2108
    .local v1, arg:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2107
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2111
    .end local v1           #arg:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2112
    :try_start_0
    const-string v14, "--unsnooze"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 2114
    .local v10, policy:Landroid/net/NetworkPolicy;
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->clearSnooze()V

    goto :goto_1

    .line 2180
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 2118
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v14, 0x1

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 2119
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2120
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2121
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2123
    const-string v14, "Cleared snooze timestamps"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2124
    monitor-exit v15

    .line 2181
    :goto_2
    return-void

    .line 2127
    .local v7, i$:I
    :cond_2
    const-string v14, "Restrict background: "

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2128
    const-string v14, "Network policies:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 2131
    .restart local v10       #policy:Landroid/net/NetworkPolicy;
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2133
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2135
    const-string v14, "Policy for UIDs:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 2138
    .local v12, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v12, :cond_4

    .line 2139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2140
    .local v13, uid:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2141
    .local v10, policy:I
    const-string v14, "UID="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2143
    const-string v14, " policy="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2144
    invoke-static {v5, v10}, Landroid/net/NetworkPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    .line 2145
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2138
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2147
    .end local v10           #policy:I
    .end local v13           #uid:I
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2149
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2150
    .local v8, knownUids:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2153
    const-string v14, "Status for known UIDs:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2155
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 2156
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_7

    .line 2157
    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 2158
    .restart local v13       #uid:I
    const-string v14, "UID="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2161
    const-string v14, " foreground="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 2163
    .local v4, foregroundIndex:I
    if-gez v4, :cond_5

    .line 2164
    const-string v14, "UNKNOWN"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2169
    :goto_6
    const-string v14, " rules="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    .line 2171
    .local v11, rulesIndex:I
    if-gez v11, :cond_6

    .line 2172
    const-string v14, "UNKNOWN"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    :goto_7
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2156
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2166
    .end local v11           #rulesIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseBooleanArray;

    invoke-static {v5, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpSparseBooleanArray(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    goto :goto_6

    .line 2174
    .restart local v11       #rulesIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    invoke-static {v5, v14}, Landroid/net/NetworkPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    goto :goto_7

    .line 2179
    .end local v4           #foregroundIndex:I
    .end local v11           #rulesIndex:I
    .end local v13           #uid:I
    :cond_7
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2180
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 3

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1915
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

    .line 1916
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
    .line 2023
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2029
    .local v0, token:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2029
    return-object v2

    .line 2031
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2008
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 2009
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
    .line 1784
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1787
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .parameter "policy"

    .prologue
    .line 1793
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 1796
    .local v3, uids:[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1797
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1798
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1799
    .local v1, uid:I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1800
    .local v2, uidPolicy:I
    if-ne v2, p1, :cond_0

    .line 1801
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1804
    .end local v1           #uid:I
    .end local v2           #uidPolicy:I
    :cond_1
    monitor-exit v5

    .line 1805
    return-object v3

    .line 1804
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isDataConnOverLimit(Ljava/lang/String;)Z
    .locals 20
    .parameter "subscriberId"

    .prologue
    .line 2870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v18, "NetworkPolicy"

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isDataConnOverLimit subscriberId:"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 2875
    if-eqz p1, :cond_0

    const-string v1, ""

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 2876
    :cond_0
    const-string v1, "NetworkPolicy"

    const-string v2, "isDataConnOverLimit subscriberId==null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const/4 v14, 0x0

    .line 2908
    :goto_0
    return v14

    .line 2880
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2881
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/net/NetworkPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/net/NetworkPolicy;

    .line 2882
    .local v13, networkpolicies:[Landroid/net/NetworkPolicy;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2883
    move-object v7, v13

    .local v7, arr$:[Landroid/net/NetworkPolicy;
    array-length v12, v7

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_5

    aget-object v15, v7, v11

    .line 2884
    .local v15, policy:Landroid/net/NetworkPolicy;
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2885
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isDataConnOverLimit policy:"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    iget-wide v1, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v18, -0x1

    cmp-long v1, v1, v18

    if-nez v1, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    .line 2882
    .end local v7           #arr$:[Landroid/net/NetworkPolicy;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #networkpolicies:[Landroid/net/NetworkPolicy;
    .end local v15           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2888
    .restart local v7       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #networkpolicies:[Landroid/net/NetworkPolicy;
    .restart local v15       #policy:Landroid/net/NetworkPolicy;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 2889
    .local v8, currentTime:J
    invoke-static {v8, v9, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v3

    .line 2890
    .local v3, start:J
    move-wide v5, v8

    .line 2893
    .local v5, end:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-interface/range {v1 .. v6}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v16

    .line 2901
    .local v16, totalBytes:J
    invoke-virtual/range {v15 .. v17}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    const/4 v14, 0x1

    .line 2902
    .local v14, overLimit:Z
    :goto_2
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isDataConnOverLimit isOver: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2894
    .end local v14           #overLimit:Z
    .end local v16           #totalBytes:J
    :catch_0
    move-exception v10

    .line 2895
    .local v10, e:Ljava/lang/RuntimeException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "problem reading network stats: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2897
    .end local v10           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v10

    .line 2899
    .local v10, e:Landroid/os/RemoteException;
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2901
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v16       #totalBytes:J
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 2883
    .end local v3           #start:J
    .end local v5           #end:J
    .end local v8           #currentTime:J
    .end local v16           #totalBytes:J
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2907
    .end local v15           #policy:Landroid/net/NetworkPolicy;
    :cond_5
    const-string v1, "NetworkPolicy"

    const-string v2, "isDataConnOverLimit no policy"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 2077
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2080
    .local v0, ident:Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2096
    :cond_0
    :goto_0
    return v3

    .line 2085
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2086
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2087
    .local v1, policy:Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2089
    if-eqz v1, :cond_2

    .line 2090
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_0

    .line 2087
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2092
    .restart local v1       #policy:Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2093
    .local v2, type:I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    .line 2096
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPolicyModified()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2862
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    if-eqz v1, :cond_0

    .line 2863
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 2864
    const/4 v0, 0x1

    .line 2866
    :cond_0
    return v0
.end method

.method public isUidForeground(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    .line 2185
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2189
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

    .line 2190
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
    .line 1835
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1840
    return-void
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 8
    .parameter "policies"

    .prologue
    const/4 v7, 0x1

    .line 1852
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string v4, "NetworkPolicy"

    const-string v5, "setNetworkPolicies"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1858
    iput-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1860
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1861
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1862
    move-object v0, p1

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1863
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1866
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 1867
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1868
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1869
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1870
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1871
    monitor-exit v5

    .line 1872
    return-void

    .line 1871
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

.method public setNetworkPoliciesForWifi([Landroid/net/NetworkPolicy;)V
    .locals 8
    .parameter "policies"

    .prologue
    const/4 v7, 0x1

    .line 1876
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const-string v4, "NetworkPolicy"

    const-string v5, "setNetworkPolicies for wifi"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1882
    iput-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1884
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1885
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1886
    move-object v0, p1

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1887
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1890
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 1891
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1892
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1893
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1894
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1895
    monitor-exit v5

    .line 1896
    return-void

    .line 1895
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
    .locals 4
    .parameter "restrictBackground"

    .prologue
    const/4 v1, 0x0

    .line 1986
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRestrictBackground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1992
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1993
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1994
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 1995
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1996
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1997
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2001
    return-void

    .line 1997
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 1999
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 3
    .parameter "uid"
    .parameter "policy"

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppPolicy appId:"

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

    .line 1761
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1762
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

    .line 1765
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    .line 1766
    return-void
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .parameter "template"

    .prologue
    .line 1921
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snoozePolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1930
    .local v0, token:J
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1934
    return-void

    .line 1932
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 379
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 380
    const-string v10, "NetworkPolicy"

    const-string v11, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 386
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 388
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 390
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 392
    :cond_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 397
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 398
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v10, v11}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v4, screenFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    new-instance v1, Landroid/content/IntentFilter;

    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v1, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, connFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v1, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 416
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 417
    .local v3, packageFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v10, "package"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 419
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v3, v14, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 422
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.UID_REMOVED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v12, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 426
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 427
    .local v7, userFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v10, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v7, v14, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 432
    new-instance v6, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v6, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 433
    .local v6, statsFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v6, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 437
    new-instance v0, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, allowFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v0, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 441
    new-instance v5, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v5, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 442
    .local v5, snoozeWarningFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v5, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 446
    new-instance v8, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v8, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 447
    .local v8, wifiConfigFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v8, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 451
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 453
    .local v9, wifiStateFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 457
    new-instance v2, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, mSimFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 392
    .end local v0           #allowFilter:Landroid/content/IntentFilter;
    .end local v1           #connFilter:Landroid/content/IntentFilter;
    .end local v2           #mSimFilter:Landroid/content/IntentFilter;
    .end local v3           #packageFilter:Landroid/content/IntentFilter;
    .end local v4           #screenFilter:Landroid/content/IntentFilter;
    .end local v5           #snoozeWarningFilter:Landroid/content/IntentFilter;
    .end local v6           #statsFilter:Landroid/content/IntentFilter;
    .end local v7           #userFilter:Landroid/content/IntentFilter;
    .end local v8           #wifiConfigFilter:Landroid/content/IntentFilter;
    .end local v9           #wifiStateFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 399
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1848
    return-void
.end method
