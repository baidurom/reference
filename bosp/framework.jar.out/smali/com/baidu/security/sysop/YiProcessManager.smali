.class public Lcom/baidu/security/sysop/YiProcessManager;
.super Ljava/lang/Object;
.source "YiProcessManager.java"


# static fields
.field public static final FETCH_TYPE_ALL:I = 0x0

.field public static final FETCH_TYPE_CLEANABLE:I = 0x1

.field static final KILL_BACKGROUND_MAX_RETRY_TIMES:I = 0x5

.field static final KILL_BACKGROUND_RETRY_PERIOD:I = 0x64

.field static final MAX_SERVICES:I = 0x96

.field public static final PROTECT_TYPE_NO_PROTECTION:I = 0x0

.field public static final PROTECT_TYPE_SYSTEM_DEPENDENCE:I = 0x1

.field public static final PROTECT_TYPE_USER_KEEP:I = 0x2

.field private static final SERVICE_TAG:Ljava/lang/String; = "BroadcastManagerService"

.field private static final SHOW_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "YiProcessManager"

.field private static mInstance:Lcom/baidu/security/sysop/YiProcessManager;


# instance fields
.field private final mAm:Landroid/app/ActivityManager;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mContext:Landroid/content/Context;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPreservedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtectedApps2:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentCleanableApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSecondaryServerMem:J

.field private mService:Lcom/baidu/security/bm/IBroadcastManagerService;

.field private final mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

.field private newProcessStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 864
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 865
    const/16 v1, 0xa

    .line 867
    .local v1, i:I
    :cond_0
    const-string v6, "BroadcastManagerService"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/security/bm/IBroadcastManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 868
    add-int/lit8 v1, v1, -0x1

    .line 870
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-nez v6, :cond_1

    if-gtz v1, :cond_0

    .line 872
    :cond_1
    iput-object p1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    .line 873
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    .line 874
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    .line 875
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 876
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    .line 879
    :goto_0
    new-instance v6, Lcom/baidu/security/sysop/YiRunningState;

    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, p0}, Lcom/baidu/security/sysop/YiRunningState;-><init>(Landroid/content/Context;Lcom/baidu/security/sysop/YiProcessManager;)V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    .line 881
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    .line 882
    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 883
    sget-object v0, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 884
    .local v5, pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 883
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 878
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkg:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    goto :goto_0

    .line 887
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps2:Ljava/util/HashSet;

    .line 888
    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_CRITICAL_LIST:[Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_CRITICAL_LIST:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 889
    sget-object v0, Lcom/baidu/security/sysop/YiSettings;->APP_CRITICAL_LIST:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 890
    .restart local v5       #pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps2:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 893
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkg:Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    .line 894
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    .line 896
    new-instance v6, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v6}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 897
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 898
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 899
    .local v4, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v6, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 900
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mSecondaryServerMem:J

    .line 901
    return-void
.end method

.method private cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter "app"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 437
    if-nez p1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v2

    .line 440
    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    :cond_2
    iget-object v2, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 445
    .local v1, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    invoke-virtual {p0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->cleanMergedItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    goto :goto_1

    .line 448
    .end local v1           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    sget-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/baidu/security/sysop/YiProcessManager;

    invoke-direct {v0, p0}, Lcom/baidu/security/sysop/YiProcessManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    return-object v0
.end method

.method private procsToApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, appProcItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 262
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 279
    :goto_0
    return-object v5

    .line 265
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 266
    .local v3, mergedApps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 267
    .local v2, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 268
    .local v0, appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    if-nez v0, :cond_3

    .line 269
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v4

    .line 270
    .local v4, ptype:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 271
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v6, Lcom/baidu/security/sysop/CleanableAppInfo;

    invoke-direct {v6, v2}, Lcom/baidu/security/sysop/CleanableAppInfo;-><init>(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 275
    .end local v4           #ptype:I
    :cond_3
    invoke-virtual {v0, v2}, Lcom/baidu/security/sysop/CleanableAppInfo;->addItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    goto :goto_1

    .line 279
    .end local v0           #appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v2           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private updatePreservedAppsList()V
    .locals 4

    .prologue
    .line 284
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, imeInfo:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 289
    .local v1, imePackage:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v3

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 291
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    monitor-exit v3

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public appIsLocked(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 712
    const/4 v1, 0x0

    .line 714
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->appIsLocked(Ljava/lang/String;)Z

    move-result v1

    .line 723
    :goto_0
    return v1

    .line 717
    :cond_0
    const-string v2, "YiProcessManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cleanAll()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v5, retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 324
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    const/4 v3, 0x0

    .line 325
    .local v3, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v7

    .line 326
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v3           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 329
    .local v0, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-boolean v6, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    if-nez v6, :cond_0

    .line 330
    invoke-direct {p0, v0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 337
    .end local v3           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->tryToCleanWhiteListApp()V

    .line 339
    return-object v5

    .line 327
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;)Z
    .locals 4
    .parameter "app"

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v3

    .line 430
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .end local v0           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    invoke-direct {p0, p1, v1}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z

    move-result v2

    return v2

    .line 431
    .end local v1           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public cleanApp(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    .line 375
    if-nez p1, :cond_1

    .line 376
    const/4 v6, 0x0

    .line 415
    :cond_0
    :goto_0
    return v6

    .line 383
    :cond_1
    const/4 v1, 0x0

    .line 384
    .local v1, appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    monitor-enter v8

    .line 385
    :try_start_0
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 386
    .local v0, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-object v7, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 387
    move-object v1, v0

    .line 391
    .end local v0           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-nez v1, :cond_5

    .line 394
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 395
    .local v2, currentApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 396
    .restart local v0       #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-object v7, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 397
    move-object v1, v0

    .line 403
    .end local v0           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v2           #currentApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    :cond_5
    const/4 v4, 0x0

    .line 404
    .local v4, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v8

    .line 405
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 406
    .end local v4           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 410
    const/4 v6, 0x0

    .line 411
    .local v6, retVal:Z
    if-eqz v1, :cond_0

    .line 412
    invoke-direct {p0, v1, v5}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z

    move-result v6

    goto :goto_0

    .line 391
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #retVal:Z
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 406
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v7

    :goto_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .end local v4           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public cleanCriticalAll()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v5, retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 349
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    const/4 v3, 0x0

    .line 350
    .local v3, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v7

    .line 351
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v3           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 354
    .local v0, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-boolean v6, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    if-nez v6, :cond_0

    .line 355
    invoke-direct {p0, v0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    .end local v0           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 360
    .end local v3           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->tryToCleanWhiteListApp()V

    .line 361
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->tryToCleanWhiteListAppCritical()V

    .line 362
    return-object v5

    .line 352
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public cleanMergedItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 458
    if-nez p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    :cond_2
    iget-boolean v8, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mBackground:Z

    if-nez v8, :cond_9

    .line 467
    :cond_3
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 468
    iget-object v5, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 470
    .local v5, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 471
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 472
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 476
    .local v6, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v8, v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopService(Landroid/content/ComponentName;)V

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    .end local v6           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_4
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    if-eqz v8, :cond_8

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v8, v8, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v8, :cond_8

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v8, v8, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x12c

    if-lt v8, v9, :cond_8

    .line 489
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    .line 493
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_5

    .line 494
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 498
    .restart local v6       #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v8, v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopService(Landroid/content/ComponentName;)V

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 501
    .end local v6           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_5
    new-array v4, v11, [I

    .line 502
    .local v4, pids:[I
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget v8, v8, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    aput v8, v4, v10

    .line 503
    const/4 v0, 0x5

    .line 504
    .local v0, count:I
    :goto_3
    if-lez v0, :cond_0

    .line 508
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    .line 509
    .local v3, memInfos:[Landroid/os/Debug$MemoryInfo;
    aget-object v8, v3, v10

    if-eqz v8, :cond_0

    aget-object v8, v3, v10

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v8

    if-lez v8, :cond_0

    .line 515
    if-gt v0, v11, :cond_7

    .line 519
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->forceStopPackage(Ljava/lang/String;)V

    .line 543
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 544
    goto :goto_3

    .line 523
    :cond_7
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_4
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    .line 533
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_6

    .line 534
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 538
    .restart local v6       #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v8, v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopService(Landroid/content/ComponentName;)V

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 524
    .end local v6           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :catch_0
    move-exception v1

    .line 525
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 550
    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #memInfos:[Landroid/os/Debug$MemoryInfo;
    .end local v4           #pids:[I
    :cond_8
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    .end local v2           #i:I
    .end local v5           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    .end local v7           #size:I
    :cond_9
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 559
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, ptype:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/security/bm/BroadcastManager;->isTrustedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/security/bm/BroadcastManager;->recordCleanedApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCleanableApps()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v14}, Lcom/baidu/security/sysop/YiRunningState;->reset()V

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/baidu/security/sysop/YiRunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    .line 197
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v14}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentFilteredMergedItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 198
    .local v11, procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v14}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentFilteredBackgroundItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 199
    .local v4, backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-nez v11, :cond_1

    const/4 v12, 0x0

    .line 200
    .local v12, pwsLen:I
    :goto_1
    if-nez v4, :cond_2

    const/4 v5, 0x0

    .line 203
    .local v5, bgpLen:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/security/sysop/YiProcessManager;->getLockedApps()[Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, lockedAppsArray:[Ljava/lang/String;
    new-instance v9, Ljava/util/HashSet;

    array-length v14, v10

    invoke-direct {v9, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 205
    .local v9, lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v3, v10

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3
    if-ge v6, v8, :cond_3

    aget-object v1, v3, v6

    .line 206
    .local v1, app:Ljava/lang/String;
    invoke-virtual {v9, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 196
    .end local v1           #app:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v5           #bgpLen:I
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v9           #lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10           #lockedAppsArray:[Ljava/lang/String;
    .end local v11           #procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v12           #pwsLen:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/baidu/security/sysop/YiRunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    goto :goto_0

    .line 199
    .restart local v4       #backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v11       #procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto :goto_1

    .line 200
    .restart local v12       #pwsLen:I
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_2

    .line 209
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v5       #bgpLen:I
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10       #lockedAppsArray:[Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    add-int v14, v12, v5

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v2, appProcItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-lez v12, :cond_5

    .line 211
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 212
    .local v7, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 213
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    .line 218
    :cond_4
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 221
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_5
    if-lez v5, :cond_b

    .line 222
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 224
    .restart local v7       #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_7

    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_6

    .line 228
    :cond_7
    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-eqz v14, :cond_8

    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v14, v14, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-nez v14, :cond_9

    .line 229
    :cond_8
    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v15}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 232
    :cond_9
    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_a

    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_a

    iget-object v14, v7, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 233
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    .line 238
    :cond_a
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 242
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/security/sysop/YiProcessManager;->procsToApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    .line 243
    .local v13, retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    monitor-enter v15

    .line 244
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 245
    if-eqz v13, :cond_c

    .line 249
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 250
    .local v1, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 253
    .end local v1           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    :cond_c
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/baidu/security/sysop/YiProcessManager;->updatePreservedAppsList()V

    .line 257
    return-object v13
.end method

.method public getCleanableSize()J
    .locals 9

    .prologue
    .line 300
    const/4 v3, 0x0

    .line 301
    .local v3, total:I
    iget-object v5, p0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 302
    .local v0, appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-object v5, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 303
    int-to-long v5, v3

    iget-wide v7, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mSize:J

    add-long/2addr v5, v7

    long-to-int v3, v5

    goto :goto_0

    .line 308
    .end local v0           #appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_1
    iget-object v5, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v5}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentWhiteListBgEmptyItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 309
    .local v4, whiteListBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 310
    .local v2, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    int-to-long v5, v3

    iget-wide v7, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    add-long/2addr v5, v7

    long-to-int v3, v5

    goto :goto_1

    .line 312
    .end local v2           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_2
    int-to-long v5, v3

    return-wide v5
.end method

.method public getLockedApps()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 688
    const/4 v1, 0x0

    .line 690
    .local v1, retVal:[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2}, Lcom/baidu/security/bm/IBroadcastManagerService;->getLockedApps()[Ljava/lang/String;

    move-result-object v1

    .line 699
    :goto_0
    return-object v1

    .line 693
    :cond_0
    const-string v2, "YiProcessManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMemFreeSize()J
    .locals 6

    .prologue
    .line 743
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 746
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long v0, v2, v4

    .line 756
    .local v0, freeMem:J
    return-wide v0
.end method

.method public getMemTotalSize()J
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getProtectionType(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 846
    if-nez p1, :cond_1

    .line 847
    const/4 v1, 0x0

    .line 861
    :cond_0
    :goto_0
    return v1

    .line 850
    :cond_1
    const/4 v1, 0x0

    .line 851
    .local v1, retVal:I
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 852
    const/4 v1, 0x1

    .line 854
    :cond_2
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 855
    .local v0, mWallpaperManager:Landroid/app/WallpaperManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 856
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, wallpaperName:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getRunningAppProcesses(I)Ljava/util/List;
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 811
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 812
    .local v6, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v6, :cond_1

    .line 813
    const/4 v6, 0x0

    .line 834
    .end local v6           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    return-object v6

    .line 816
    .restart local v6       #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    if-ne p1, v9, :cond_0

    .line 817
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 818
    .local v2, it:Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 819
    .local v7, ptype:I
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 820
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 821
    .local v5, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 822
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v7

    .line 826
    if-eq v7, v9, :cond_3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 827
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 821
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getRunningServices(I)Ljava/util/List;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 770
    iget-object v4, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 771
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_1

    .line 772
    const/4 v3, 0x0

    .line 798
    .end local v3           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    return-object v3

    .line 775
    .restart local v3       #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_1
    if-ne p1, v6, :cond_0

    .line 776
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 777
    .local v0, it:Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 778
    .local v1, ptype:I
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 779
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 780
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v1

    .line 784
    if-nez v1, :cond_3

    .line 785
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 786
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v1

    .line 792
    :cond_3
    if-eq v1, v6, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 793
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public lockApp(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addLockedApp(Ljava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 620
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lockApps([Ljava/lang/String;)V
    .locals 3
    .parameter "packageNameArray"

    .prologue
    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addLockedApps([Ljava/lang/String;)V

    .line 643
    :goto_0
    return-void

    .line 638
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAppServices(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 120
    :cond_0
    return-void
.end method

.method public stopBackgroundAppProcess(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, ptype:I
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 146
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/security/bm/BroadcastManager;->recordCleanedApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopService(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "cmpName"

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, ptype:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public tryToCleanWhiteListApp()V
    .locals 5

    .prologue
    .line 565
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v3}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentWhiteListBgEmptyItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 569
    .local v2, whiteListBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    monitor-enter v2

    .line 570
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 571
    .local v1, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-boolean v3, v1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_0

    .line 572
    iget-object v3, v1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 573
    :cond_1
    iget-object v3, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v4, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 574
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 579
    :cond_2
    invoke-virtual {p0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->cleanMergedItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    goto :goto_0

    .line 582
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    return-void
.end method

.method public tryToCleanWhiteListAppCritical()V
    .locals 10

    .prologue
    .line 586
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v7}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentWhiteListItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 590
    .local v6, whiteListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    monitor-enter v6

    .line 591
    :try_start_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 592
    .local v2, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps2:Ljava/util/HashSet;

    iget-object v8, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 595
    iget-object v7, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_2

    :cond_1
    iget-boolean v7, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mBackground:Z

    if-nez v7, :cond_3

    .line 596
    :cond_2
    iget-object v3, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 598
    .local v3, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 599
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 600
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 601
    .local v4, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    .end local v0           #i:I
    .end local v3           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    .end local v4           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    .end local v5           #size:I
    :cond_3
    iget-object v7, v2, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    return-void
.end method

.method public unlockApp(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->removeLockedApp(Ljava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unlockApps([Ljava/lang/String;)V
    .locals 3
    .parameter "packageNameArray"

    .prologue
    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->removeLockedApps([Ljava/lang/String;)V

    .line 679
    :goto_0
    return-void

    .line 674
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
